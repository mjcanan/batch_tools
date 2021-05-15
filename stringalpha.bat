@echo off

:: call stringalpha "!content!" return

:: array with non-alpha characters, excluding " > < 
:: note: operands don't work very well
call create_array notalpha "a" "~a`a!a@a#a$a%a^a&a*a(a)a_a-a+a=a|a\a}a]a{a[a:a;a/a?a.a,a'a1a2a3a4a5a6a7a8a9a0a "
call create_string content %1

set /a limit=%content_length% - 1
set /a notalpha_limit=%notalpha_length% - 1
set %2=1

for /l %%g in ( 0, 1, %limit% ) do (
	set character=!content:~%%g,1!
	
	for /l %%h in ( 0, 1, %notalpha_limit% ) do (
		if "!character!" equ "!notalpha[%%h]!" (
			set %2=0
			goto :end
		)
	)
)

:end
