@echo off
setlocal enabledelayedexpansion
goto :main

:main

setlocal

	call create_array list_of_numbers "," "45,532,2,65,7,-2,-34,1" > nul
	
	call getmin list_of_numbers min > nul
	echo !min!

endlocal

goto :eof