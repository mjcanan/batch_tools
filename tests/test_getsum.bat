@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

	call create_array numbers " " "100 1 13 45 123345 10"
	
	call getsum numbers total
	echo !total!
	
endlocal
goto :eof