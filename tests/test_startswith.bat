@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

	call create_string var "This is a joke"
	call string_starts_with "!var!" "This " does_it
	
	echo !does_it!

	call string_ends_with "!var!" "jok" ends
	
	echo !ends!

endlocal
goto :eof