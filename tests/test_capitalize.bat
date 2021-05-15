@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

	call create_string variable "what are you talking about"
	call capitalize "!variable!" return
	echo !return!

endlocal
goto :eof