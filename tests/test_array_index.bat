@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_array array " " "I am really hungry am I"
	call array_index array "I" return 3
	
	echo !return!

endlocal