#ertugerata/pisi-chroot-farm
FROM ertugerata/pisi-chroot-base
MAINTAINER Ertuğrul Erata <ertugrulerata@gmail.com>

RUN service dbus start && pisi cp && pisi ar ilker http://manap.se/pisi/pisi-index.xml.xz \
    && pisi it --ignore-safety --ignore-dependency autoconf autogen automake binutils bison flex gawk gc gcc gnuconfig \
    guile libmpc libtool-ltdl libtool lzo m4 make mpfr pkgconfig yacc glibc-devel && service dbus stop

RUN pisi dc &&  rm -rf /usr/share/man \
                       /usr/share/doc \
                       /usr/share/gtk-doc \
                       /usr/share/locale/[a-d][f-z]* \
                       /usr/share/locale/e[a-m,o-z]* \
             && pisi ar core https://github.com/ertugerata/core/raw/master/pisi-index.xml.xz \
             && pisi ur

WORKDIR /root
