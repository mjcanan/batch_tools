@echo off

set string=%2
for /f "useback tokens=*" %%a in ('%string%') do (

	set string=%%~a
)

echo %string%> %TEMP%\tempfile.txt

for %%g in (%TEMP%\tempfile.txt) do (
	set /a %1_length=%%~zg - 2
)

del %TEMP%\tempfile.txt
set %1=%string%

