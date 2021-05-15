@echo off
:: call string_swapcase "!string!" return
goto :main


:set_char

	set new_string=!new_string!!%~1!

goto :eof


:main

	call create_array alphabet " " "Q W E R T Y U I O P A S D F G H J K L Z X C V B N M q w e r t y u i o p a s d f g h j k l z x c v b n m"
	
	call create_string content %1
	
	set /a limit=%content_length% - 1
	set /a alpha_limit=%alphabet_length% - 1
	
	set new_string=
	
	for /l %%g in ( 0, 1, %limit% ) do (
		set character=!content:~%%g,1!
		set found=false
		
		for /l %%h in ( 0, 1, %alpha_limit% ) do (
			if "!character!" equ "!alphabet[%%h]!" (
				if %%h geq 26 (
				  set /a lower=%%h - 26
				  
				  call :set_char alphabet[!lower!]
				  set found=true
				)
				if %%h leq 26 (
				  set /a upper=%%h + 26
				  
				  call :set_char alphabet[!upper!]
				  set found=true
				)
			)
		)
		if "!found!" equ "false" (
			set new_string=!new_string!!character!
		)
	)
	
	
	set %2=!new_string!


goto :eof