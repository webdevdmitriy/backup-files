@echo off

REM set disk=\\192.168.127.220\02 Eplan
set disk=Z:

set in=%disk%\Data\��������\ESS_part002.mdb
set out=%disk%\Data\��������\Backup\data

set curdate=%date%
set new_format_date=%curdate:~6,4%%curdate:~2,4%%curdate:~0,2%

REM ����஢���� 䠩��
xcopy "%in%" "%out%\%new_format_date%\" /Y


REM 㤠����� 䠩��� ���� n ����
set n=7
forfiles /p "%out%" /S /D -%n% /C "cmd /c IF @isdir == TRUE rd /S /Q @path"


REM pause






REM forfiles /p "%out%" /s /m *.* /D -%n% /C "cmd /c del @path"
rem 㤠����� 䠩��� ���� 7 ����
REM ROBOCOPY %disk%\Backup %disk%\Data\��������\Backup\destination /mov /minage:7
REM del %disk%\Data\��������\Backup\destination /q
REM set in="C:\Users\Dmitriy\Desktop\testcopy\file.txt"
REM set out="\\192.168.127.220\02 Eplan\Backup"
REM set out="\\192.168.127.220\02 Eplan\Backup"
REM set in="C:\Users\Dmitriy\Desktop\testcopy\file.txt"
@REM chcp 1251
@REM ren C:\Users\Dmitriy\Desktop\testcopy\file.txt %date%.txt
@REM pause
@REM @REM set ap = %date%
@REM set ap = %date%
@REM echo %ap%
@REM pause
@REM @REM ren C:\Users\Dmitriy\Desktop\testcopy\file.txt %CURDATE%.txt
REM hobocopy %in% "%out%%new_format_date%\"