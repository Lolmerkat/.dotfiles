@echo off

:: File Aliases

SET alias_file=%config_home%\utils\windows-aliases.bat

:: Directory Aliases

DOSKEY cfg=nvim %config_home%

:: Command aliases

DOSKEY ls=dir /B $*
DOSKEY mv=move $*
DOSKEY aliases=nvim %alias_file%
DOSKEY alias=echo DOSKEY $1=$2 >> %alias_file%
DOSKEY export=echo SET $1=$2 >> %alias_file%

:: Command-added aliases
