@echo off
If not exist %1 (echo Данной папки нет & goto pause)
del report1.txt
Set /A x
For /F "tokens=*" %%A In ('dir %1 /B *.txt') Do Set /A x+=1
set /A z=%x%%%2
if %z% EQU 0 (dir %1 /O-D /TC /B "*.txt" | find /v "report1.txt" > report1.txt) else (dir %1 /OS /B "*.txt" | find /v "report1.txt" > report1.txt) 
pause