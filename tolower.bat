@echo off
goto :main
:: call tolower "!string!" return
:: converts a string to lowercase

:set_character

	for %%g in ( "Q=q" "W=w" "E=e" "R=r" "T=t" "Y=y" "U=u" "I=i" "O=o" "P=p" "A=a" "S=s" "D=d" "F=f" "G=g" "H=h" "J=j" "K=k" "L=l" "Z=z" "X=x" "C=c" "V=v" "B=b" "N=n" "M=m" ) do (
		call set "%~1=%%%~1:%%~g%%"
	)
goto :eof

:main

	call create_string content %1
	call create_string final "!content!"
	
	call :set_character final
	set %2=!final!

goto :eof