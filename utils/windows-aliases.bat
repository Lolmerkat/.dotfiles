@echo off

:: File Aliases

SET alias_file=%XDG_CONFIG_HOME%\utils\windows-aliases.bat

:: Directory Aliases

DOSKEY cfg=nvim %XDG_CONFIG_HOME%

:: Command aliases

DOSKEY ls=dir /B $*
DOSKEY mv=move $*
DOSKEY aliases=nvim %alias_file%
DOSKEY alias=echo DOSKEY $1=$2 >> %alias_file%
DOSKEY export=echo SET $1=$2 >> %alias_file%

:: Command-added aliases
