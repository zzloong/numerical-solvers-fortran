program problem2
use config
use functions
use initial_value_1D
implicit none

! DATA DICTIONARY
real(wp)			::	t0,tf,y0,h
integer				::	n

write(*,*)'Enter the size of h:'
read(*,*)h

y0 = 30.0_wp
t0 = 0.0_wp
tf = 20.0_wp
n = int((tf-t0)/h)

write(*,*)implicit_euler(func,t0,tf,y0,n,fy)

end program problem2