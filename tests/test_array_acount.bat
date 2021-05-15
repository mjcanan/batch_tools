@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_array array " " "this is a fish is it not"
	call array_count array "this" return
	
	echo !return!

endlocal