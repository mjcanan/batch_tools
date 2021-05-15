@echo off
goto :main

:: call string_find "!string!" "!find!" return [pos]
:: returns the position of a substring
:: returns -1 if not found
:: takes an option position parameter to begin substring search from a different index
:: starts at 0 by default

:check_character
	if "!content:~%~1,1!" equ "!find:~%~2,1!" (
		if %~2 equ !find_limit! (
			set /a position=%~1 - %~2
			set %~3=!position!
			
			set found=true
		)
	)
	
goto :eof

:main

	call create_string content %1
	call create_string find %2
	set found=
	
	set /a %3=-1
	set start_pos=%4
	
	if "%start_pos%" equ "" (
		set start_pos=0
	)
	
	set /a content_limit=%content_length% - 1
	set /a find_limit=%find_length% - 1
	
	for /l %%g in (%start_pos%, 1, %content_limit% ) do (
		set character=!content:~%%g,1!
		
		if "!character!" equ "!find:~0,1!" (
			for /l %%h in (0, 1, %find_limit% ) do (
				set /a offset=%%g + %%h
				
				call :check_character !offset! %%h %3
				if defined found (
					goto :eof
				)
			)
		)
	)
	
	

goto :eof