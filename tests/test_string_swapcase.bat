@echo off
setlocal EnableDelayedExpansion
goto :main

:main
setlocal

	call create_string string "SDLFJSLDFJ lkjadklj lasj908mlkj$ kl1233 "
	call string_swapcase "!string!" return
	echo !return!

endlocal