@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_string string "654654"
	call isdigits "!string!" response
	echo !response!

endlocal