#ertugerata/pisi-chroot-farm
FROM ertugerata/pisi-chroot-beta
LABEL maintainer Ertuğrul Erata <ertugrulerata@gmail.com>

RUN service dbus start &&  pisi cp && update-ca-certificates && pisi ar beta https://ciftlik.pisilinux.org/2.0-Beta.1/pisi-index.xml.xz \
    && pisi it --ignore-safety --ignore-dependency autoconf autogen automake binutils bison flex gawk gc gcc gnuconfig \
    guile libmpc libtool-ltdl libtool lzo m4 make mpfr pkgconfig yacc chrpath pisilinux-dev-tools glibc-devel isl && service dbus stop

RUN pisi dc &&  rm -rf /usr/share/man \
                       /usr/share/doc \
                       /usr/share/gtk-doc \
                       /usr/share/locale/[a-d][f-z]* \
                       /usr/share/locale/e[a-m,o-z]*

RUN pisi ar core https://github.com/pisilinux/core/raw/master/pisi-index.xml.xz && \
    pisi ar main https://github.com/pisilinux/main/raw/master/pisi-index.xml.xz --ignore-check --at 2

WORKDIR /root
