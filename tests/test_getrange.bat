@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

	call getrange numbers "," 15 30 5
	echo !numbers!
	
endlocal
goto :eof
