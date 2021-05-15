@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_array array " " "I am tired"
	call array_insert array " " "really" 1
	
	echo !array!

endlocal