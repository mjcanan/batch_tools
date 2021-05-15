@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_string str "WHA!?!?!? dfdsf 2345 RRRR er YUI TNOOOOOO"
	call tolower "!str!" return
	echo !return!

endlocal
goto :eof