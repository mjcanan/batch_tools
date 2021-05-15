@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_string string "aasdfadf28@9^348923490%o"
	call islower "!string!" response
	echo !response!

endlocal
goto :eof