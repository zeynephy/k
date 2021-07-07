@echo off
echo search file:
echo.
set /p ext=
where /R C:\Users\PC_1764-\Desktop\yazlm-test-bat\05.07.2021 %ext% > f.txt
notepad.exe f.txt
setlocal enableextensions
rem fetch the first URL
set /p URL=<f.txt
rem ... and put it to the end
echo.%URL%>>tmp_f.txt
del f.txt
ren tmp_f.txt f.txt
xcopy "%URL%" C:\Users\PC_1764-\Desktop\yazlm-test-bat\push /s
