@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

	call create_string var "there are three ths"
	call string_count "!var!" "th" total
	
	echo !total!

endlocal
goto :eof