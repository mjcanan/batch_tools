@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_array array " " "What am I"
	call array_append array " " "missing"
	echo !array[3]!

endlocal
goto :eof