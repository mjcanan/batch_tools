@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_array array "," "remove,the,end:,bep"
	call array_remove array "," 3
	echo !array!
	
	call create_array arr2 " " "this is not a fun thing to do"
	call array_remove arr2 " " 2
	echo !arr2!

endlocal