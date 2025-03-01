@echo off

:: File Aliases

SET alias_file=%XDG_CONFIG_HOME%\utils\windows-aliases.bat

:: Directory Aliases

DOSKEY cfg=nvim %XDG_CONFIG_HOME%
DOSKEY aliases=nvim %alias_file%
DOSKEY dskt=cd "%USERHOME%\Desktop"

:: Command aliases

DOSKEY ls=dir /B $*
DOSKEY mv=move $*
DOSKEY spt=spotify_player
DOSKEY :q=exit
