#ertugerata/pisi-chroot-farm
FROM ertugerata/pisi-chroot-base
MAINTAINER Ertuğrul Erata <ertugrulerata@gmail.com>

WORKDIR /root
#RUN rm /run/dbus/pid
#RUN rm /run/dbus/system_bus_socket
RUN /sbin/start-stop-daemon -b --start  --pidfile /var/run/dbus/pid --exec /usr/bin/dbus-daemon -- --system

RUN pisi ur

RUN pisi it --ignore-safety --ignore-dependency autoconf \
            autogen \
            automake \
            binutils \
            bison \
            flex \
            gawk \
            gc \
            gcc \
            gmp \
            gnuconfig \ 
            guile \
            libmpc \
            libtool-ltdl \
            libtool \
            lzo \
            m4 \
            make \ 
            mpfr \
            pkgconfig \ 
            python-iniparse \ 
            yacc

RUN pisi dc

RUN rm -rf /usr/share/man \
           /usr/share/doc \
           /usr/share/gtk-doc \
           /usr/share/locale/[a-d][f-z]* \
           /usr/share/locale/e[a-m,o-z]* 
