@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

	call create_array numbers " " "3 2 1"
	echo !numbers!
	echo.
	
	call arr_sort numbers " "
	echo !numbers!


endlocal
goto :eof