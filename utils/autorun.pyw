import sys
import os
import subprocess

def is_windows():
    return sys.platform.startswith('win')

def run_command_aliases():
    script_path = 'windows-aliases.bat'
    subprocess.run(script_path, creationflags=subprocess.CREATE_NO_WINDOW, shell=True)

def run_change_notifier():
    script_path = './notifier.py'
    subprocess.run([sys.executable, script_path], creationflags=subprocess.CREATE_NO_WINDOW)

def main():
    if is_windows():
        run_command_aliases()

    run_change_notifier()
    pass

if __name__ == "__main__":
    main()