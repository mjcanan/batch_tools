@echo off
goto :main
:: call toupper "!string!" return
:: converts a string to uppercase

:set_character

	for %%g in ( "q=Q" "w=W" "e=E" "r=R" "t=T" "y=Y" "u=U" "i=I" "o=O" "p=P" "a=A" "s=S" "d=D" "f=F" "g=G" "h=H" "j=J" "k=K" "l=L" "z=Z" "x=X" "c=C" "v=V" "b=B" "n=N" "m=M" ) do (
		call set "%~1=%%%~1:%%~g%%"
	)
goto :eof

:main

	call create_string content %1
	call create_string final "!content!"
	
	call :set_character final
	set %2=!final!

goto :eof