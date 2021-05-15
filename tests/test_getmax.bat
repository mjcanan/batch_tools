@echo off
setlocal enabledelayedexpansion
goto :main

:main

setlocal

	call create_array list_of_numbers "," "45,532,2,65,7,-2,-34,1,5678" > nul
	
	call getmax list_of_numbers max > nul
	echo !max!

endlocal

goto :eof