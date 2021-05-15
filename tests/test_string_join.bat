@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_string str "help"
	call string_join "!str!" "FFFFFFFFF" test
	echo !test!

endlocal