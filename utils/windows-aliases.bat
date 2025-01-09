@echo off

:: File Aliases

DOSKEY alias_file=%config_home%\windows-aliases.bat

:: Directory Aliases

DOSKEY config=cd %config_home%
DOSKEY edit-config=nvim %config_home%

:: Command aliases

DOSKEY ls=dir /B $*
DOSKEY mv=move $*
DOSKEY aliases=nvim alias_file
DOSKEY alias=echo DOSKEY $1=$2 >> aliad_file

:: Command-added aliases
