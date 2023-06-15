@echo off
@chcp 1251

REM set disk=\\192.168.127.220\02 Eplan
set disk=Z:

set in=%disk%\Data\Элементы\ESS_part002.mdb
set out=%disk%\Data\Элементы\Backup\data

set curdate=%date%
set new_format_date=%curdate:~6,4%%curdate:~2,4%%curdate:~0,2%

REM копирование файла
xcopy "%in%" "%out%\%new_format_date%\" /Y


REM удаление файлов старше n дней
set n=7
forfiles /p "%out%" /S /D -%n% /C "cmd /c IF @isdir == TRUE rd /S /Q @path"


REM pause






