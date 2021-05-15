@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_string string "FGH2"
	call isupper "!string!" return
	echo !return!

endlocal