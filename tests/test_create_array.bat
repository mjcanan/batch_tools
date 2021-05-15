@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

	call create_array grocery_list " " "Apples Bananas Cake"
	
	echo !grocery_list[0]!
	
	::passed all tests

endlocal