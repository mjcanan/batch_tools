@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

	call create_string str "as/fg"
	call stringalpha "!str!" return
	echo !return!

endlocal
goto :eof