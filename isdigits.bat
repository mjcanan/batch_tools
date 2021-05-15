@echo off

  :: call isdigits "!string!" return
  :: determines if a string contains all numeric characters
  :: returns 1 if string has all numeric characters
  :: returns 0 if string contains any non-numeric characters
  :: doesn't work for all special characters

  call create_array bad "0" "0!0@0#0$0%0^0&0*0(0)0-0_0=0+0[0]0\0{0}0|0`0~0,0.0;0:0/0?0q0w0e0r0t0y0u0i0o0p0a0s0d0f0g0h0j0k0l0z0x0c0v0b0n0m0Q0W0E0R0T0Y0U0I0O0P0A0S0D0F0G0H0J0K0L0Z0X0C0V0B0N0M0 "
  call create_string content %1
  set %2=1
  
  set /a limit=%content_length% - 1
  set /a bad_limit=%bad_length% - 1
  
  for /l %%g in ( 0, 1, %limit% ) do (
	set character=!content:~%%g,1!
	
	for /l %%h in ( 0, 1, %bad_limit% ) do (
		if "!character!" equ "!bad[%%h]!" (
			set %2=0
			goto :end
		)
	)

  )
:end  
  