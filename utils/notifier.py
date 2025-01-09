import subprocess
import sys
from pathlib import Path

def ensure_dependencies():
    required_packages = ['plyer']
    
    for package in required_packages:
        try:
            __import__(package)
        except ImportError:
            print(f"Installing {package}...")
            subprocess.check_call([sys.executable, "-m", "pip", "install", package])
            
    # Now we can safely import plyer
    global plyer
    import plyer

# Call this at start
ensure_dependencies()

import subprocess
from pathlib import Path

def get_current_branch() -> str:
    return subprocess.check_output(['git', 'branch', '--show-current']).decode('utf-8').strip()

def has_changes():
    subprocess.run(['git', 'fetch', 'origin'], check=True)
    local_hash = subprocess.check_output(['git', 'rev-parse', 'HEAD']).decode('utf-8').strip()
    remote_hash = subprocess.check_output(['git', 'rev-parse', 'origin/master']).decode('utf-8').strip()
    return local_hash != remote_hash

def get_commit_difference() -> tuple[int, int]:
    """Get the number of commits the local repository is behind/ahead of the remote repository"""
    try:
        output = subprocess.check_output([
            'git', 'rev-list', '--left-right', '--count', 'HEAD...@{upstream}'
        ]).decode('utf-8').strip()
        ahead, behind = map(int, output.split('\t'))
        return ahead, behind
    except subprocess.CalledProcessError:
        return 0, 0 # No upstream branch

def notify_changes(commits_behind: int, commits_ahead: int):
    if commits_behind == 0 and commits_ahead == 0:
        message = 'Your config is up to date.'
    else:
        message = (
            f'Your config is out of date by {commits_behind} commit{"s" if commits_behind != 1 else ""} '
            f'and ahead by {commits_ahead} commit{"s" if commits_ahead != 1 else ""}'
        )

    plyer.notification.notify(
        title='.dotfiles - Remote Changes',
        message=message,
        app_name='Dotfiles Notifier',
        timeout=10
    )

if __name__ == "__main__":
    branch = get_current_branch()
    if branch != 'master':
        print('Not on master branch, skipping...')
        exit(0)

    config_changes = has_changes()
    if config_changes:
        ahead, behind = get_commit_difference()
        notify_changes(behind, ahead)
        
    exit(-1)