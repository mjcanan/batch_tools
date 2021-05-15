@echo off

:: call capitalize "!string!" return

call create_array uppers " " "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
call create_array lowers " " "a b c d e f g h i j k l m n o p q r s t u v w x y z"

call create_string string %1

set first=%string:~0,1%

set /a limit=%uppers_length% - 1

for /l %%g in ( 0, 1, %limit% ) do (
	if !lowers[%%g]! equ !first! (
		set %2=!uppers[%%g]!
		goto :end
	)
)
set %2=!first!
:end
set %2=!%2!!string:~1!