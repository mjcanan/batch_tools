@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_string str "qwertyuiopasdfghjklzxcvbnm"
	call toupper "!str!" return
	echo !return!

endlocal
goto :eof