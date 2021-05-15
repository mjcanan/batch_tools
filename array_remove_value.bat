@echo off

:: call array_remove_value array "delimiter" value
:: searches array for value.  If it finds the value it removes it

call create_string delimiter %2
set value=%3
set new_array=

set /a limit=!%1_length! - 1


for /l %%g in ( 0, 1, %limit% ) do (
	:: creates a new array, skipping the value we want to remove
	if !%1[%%g]! neq %value% (
	
		if %%g equ %limit% (
			set new_array=!new_array!!%1[%%g]!
		) else (
			set new_array=!new_array!!%1[%%g]!!delimiter!
		)
	)
	
)
:: if we removed the last index, we need to remove the trailing delimiter
if %value% equ !%1[%limit%]! (
	set new_array=!new_array:~0,-1!
)

call create_array %1 "!delimiter!" "!new_array!"
:end