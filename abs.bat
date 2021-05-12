@echo off

:: abs number return_value

if %1 lss 0 (
	set /a %2=%1 * -1
) else (
	set %2=%1
)