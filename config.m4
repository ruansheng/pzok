dnl $Id$
dnl config.m4 for extension pzok

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(pzok, for pzok support,
dnl Make sure that the comment is aligned:
dnl [  --with-pzok             Include pzok support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(pzok, whether to enable pzok support,
dnl Make sure that the comment is aligned:
dnl [  --enable-pzok           Enable pzok support])

if test "$PHP_PZOK" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-pzok -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/pzok.h"  # you most likely want to change this
  dnl if test -r $PHP_PZOK/$SEARCH_FOR; then # path given as parameter
  dnl   PZOK_DIR=$PHP_PZOK
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for pzok files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       PZOK_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$PZOK_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the pzok distribution])
  dnl fi

  dnl # --with-pzok -> add include path
  dnl PHP_ADD_INCLUDE($PZOK_DIR/include)

  dnl # --with-pzok -> check for lib and symbol presence
  dnl LIBNAME=pzok # you may want to change this
  dnl LIBSYMBOL=pzok # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $PZOK_DIR/$PHP_LIBDIR, PZOK_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_PZOKLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong pzok lib version or lib not found])
  dnl ],[
  dnl   -L$PZOK_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(PZOK_SHARED_LIBADD)

  PHP_NEW_EXTENSION(pzok, pzok.c, $ext_shared,, -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1)
fi
