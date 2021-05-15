@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

	call create_string sentence "a lot of stuff"
	call string_center sentence 40 fill
	echo !fill!

endlocal

goto :eof