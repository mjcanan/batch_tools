@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_array array " " "Remove any value that is 1 1 1 1 were these 1 remove?"
	call array_remove_value array " " 1
	echo !array!

endlocal