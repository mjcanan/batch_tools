@echo off

:: call array_count array "find" return
:: gives you a count of the occurances of the "find" variable in an array

call create_string find %2

set /a limit=!%1_length! - 1
set count=0

for /l %%g in ( 0, 1, %limit% ) do (

	if "!%1[%%g]!" equ "!find!" (
		set /a count=!count! + 1
	)

)

set %3=!count!