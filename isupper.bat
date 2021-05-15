@echo off

:: call isupper "!string!" return
:: returns 0 is string has lowercase letters in it
:: returns 1 if string is all uppercase

	call create_array lowers " " "q w e r t y u i o p a s d f g h j k l z x c v b n m"
	call create_string content %1
	
	set /a limit=%content_length% - 1
	set /a lower_limit=%lowers_length% - 1
	
	set %2=1
	
	for /l %%g in ( 0, 1, %limit% ) do (
	
		set character=!content:~%%g,1!
		
		for /l %%h in ( 0, 1, %lower_limit% ) do (
		
			if "!character!" equ "!lowers[%%h]!" (
				set %2=0
				goto :end
			)
		
		)
	
	)
	
:end