@echo off

:: call array_remove array "delimiter" position
:: removes a value at a user provided index (position)

call create_string delimiter %2
set position=%3
set new_array=

set /a limit=!%1_length! - 1

if %position% gtr %limit% (
	goto :end
)

for /l %%g in ( 0, 1, %limit% ) do (
	:: creates a new array, skipping the position we want to remove
	if %%g neq %position% (
	
		if %%g equ %limit% (
			set new_array=!new_array!!%1[%%g]!
		) else (
			set new_array=!new_array!!%1[%%g]!!delimiter!
		)
	)
	
)
:: if we removed the last index, we need to remove the trailing delimiter
if %position% equ %limit% (
	set new_array=!new_array:~0,-1!
)

call create_array %1 "!delimiter!" "!new_array!"
:end