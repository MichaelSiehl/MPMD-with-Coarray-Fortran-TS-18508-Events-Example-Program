! This file is part of:
! MPMD with Coarray Fortran TS-18508 Events – Example Program
! copyright 2016 by Michael Siehl
! www.mpmd-with-coarray-fortran.de
! http://www.mpmd-with-coarray-fortran.de/TS18508_Events_example.pdf

PROGRAM Main
  !
  USE Main_Sub
  !
  CALL Entry_Main_Sub ()
  !
END PROGRAM Main




! Initially, we did also develop another simple example program
! to try out TS-18508 Events, shown below:

!program event_example
!  use iso_fortran_env
!  implicit none
!  type(event_type) :: ev[*]
!  integer :: a [*]
!  integer :: b
!  if (this_image() == 1) then
!    event wait (ev)
!    b = a[2]
!    write(*,*) "image 1, b ==", b
!  elseif (this_image() == 2) then
!    write(*,*) "image 2"
!    a = 77
!    event post (ev[1])
!  end if
!end program event_example
