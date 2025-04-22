@echo off

:: File Aliases

SET USERHOME=C:/Users/%USERNAME%/
SET alias_file=%XDG_CONFIG_HOME%\utils\windows-aliases.bat

:: Directory Aliases

DOSKEY cfg=nvim --cmd "cd %XDG_CONFIG_HOME%"
DOSKEY aliases=nvim %alias_file%
DOSKEY dskt=cd "%USERHOME%/Desktop"

:: Command aliases

DOSKEY ls=dir /B $*
DOSKEY mv=move $*
DOSKEY spt=spotify_player
DOSKEY :q=exit
DOSKEY :qa=exit
DOSKEY pwd=echo %cd%
DOSKEY clear=cls
