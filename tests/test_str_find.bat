@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

	call create_string var "this is it, isn't it?"
	call string_find "!var!" "t" position 6
	
	echo !position!

endlocal
goto :eof