@echo off
setlocal enabledelayedexpansion

goto :main

:main
setlocal

	::This script is written to kill whatever process you have running on a provided port
	::The program does not offer a choice or display any information -- it just forces a taskkill
	::Written to run in lieu of searching for process with netstat -ano | find [port] and then
	::taskkill /F /PID [pid]
	
	set pid =0
	if %~1 equ --help (
		echo Usage: pk [port number]
		echo This script will kill whatever process you have running on that port.
		goto :eof
	)
	for /f "tokens=5" %%g in ('netstat -ano ^| find ":%~1"') do (
		::gets the first process
		if !pid! equ 0 (
		  set pid=%%g
		)
	)
	
	call taskkill /F /PID !pid!
	
endlocal

goto :eof

