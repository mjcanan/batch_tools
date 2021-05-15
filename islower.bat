@echo off

	::call islower "!string!" return
	::errors out on strings with operands and certain special characters
	
	call create_array uppers " " "Q W E R T Y U I O P A S D F G H J K L Z X C V B N M"
	call create_string content %1
	
	set /a uppers_limit=!uppers_length! - 1
	set /a limit=!content_length! - 1
	set %2=1
	
	for /l %%g in ( 0, 1, %limit% ) do (
		set character=!content:~%%g,1!
		
		for /l %%h in ( 0, 1, %uppers_limit% ) do ( 
		
			if "!character!" equ "!uppers[%%h]!" (
				set %2=0
				goto :end
			)
		
		)
	)	
	
:end