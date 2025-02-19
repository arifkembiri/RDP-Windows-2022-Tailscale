@echo off
setlocal enabledelayedexpansion

rem Menetapkan variabel counter dan max_time
set /a counter=0
set /a max_time=43200  rem 30 hari dalam menit (30 * 24 * 60)

:loop
echo HEN RDP ACTIVE!!
set /a counter+=1

rem Mengecek apakah counter telah mencapai max_time
if !counter! GEQ !max_time! exit

rem Menunggu 60 detik (1 menit)
ping 127.0.0.1 > NUL
timeout /t 60 >nul

rem Kembali ke loop
goto loop
