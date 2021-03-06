#serial 7

dnl From Jim Meyering.
dnl Check for the nanosleep function.
dnl If not found, use the supplied replacement.
dnl

AC_DEFUN(jm_FUNC_NANOSLEEP,
[
 nanosleep_save_libs=$LIBS

 # Solaris 2.5.1 needs -lposix4 to get the nanosleep function.
 # Solaris 7 prefers the library name -lrt to the obsolescent name -lposix4.
 AC_SEARCH_LIBS(nanosleep, [rt posix4], [LIB_NANOSLEEP=$ac_cv_search_nanosleep])
 AC_SUBST(LIB_NANOSLEEP)

 AC_CACHE_CHECK([whether nanosleep works],
  jm_cv_func_nanosleep_works,
  [
   AC_REQUIRE([AC_HEADER_TIME])
   AC_TRY_RUN([
#   if TIME_WITH_SYS_TIME
#    include <sys/time.h>
#    include <time.h>
#   else
#    if HAVE_SYS_TIME_H
#     include <sys/time.h>
#    else
#     include <time.h>
#    endif
#   endif

    int
    main ()
    {
      struct timespec ts_sleep, ts_remaining;
      ts_sleep.tv_sec = 0;
      ts_sleep.tv_nsec = 1;
      exit (nanosleep (&ts_sleep, &ts_remaining) == 0 ? 0 : 1);
    }
	  ],
	 jm_cv_func_nanosleep_works=yes,
	 jm_cv_func_nanosleep_works=no,
	 dnl When crosscompiling, assume the worst.
	 jm_cv_func_nanosleep_works=no)
  ])
  if test $jm_cv_func_nanosleep_works = no; then
    AC_LIBOBJ(nanosleep)
    AC_DEFINE_UNQUOTED(nanosleep, rpl_nanosleep,
      [Define to rpl_nanosleep if the replacement function should be used.])
  fi

 LIBS=$nanosleep_save_libs
])
