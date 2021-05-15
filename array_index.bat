@echo off

:: call array_index array "find" return [position]
:: returns index of "find" in an array
:: optional position parameters for setting search start index
:: returns -1 if not found

call create_string find %2
set position=%4
set %3=-1

if "!position!" equ "" (
	set position=0
)

set /a limit=!%1_length! - 1

for /l %%g in ( %position%, 1, %limit% ) do (

	if "!%1[%%g]!" equ "!find!" (
		set %3=%%g
		goto :end
	)
)

:end