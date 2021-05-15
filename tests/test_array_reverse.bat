@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_array array " " "This is an array"
	call array_reverse array " "
	echo !array!

endlocal