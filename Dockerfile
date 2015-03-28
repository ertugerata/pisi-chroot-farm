#ertugerata/pisi-chroot-farm
FROM ertugerata/pisi-chroot-base
MAINTAINER Ertuğrul Erata <ertugrulerata@gmail.com>

WORKDIR /root

RUN rm /run/dbus/pid
RUN rm /run/dbus/system_bus_socket

RUN /sbin/start-stop-daemon -b --start  --pidfile /var/run/dbus/pid --exec /usr/bin/dbus-daemon -- --system

RUN pisi ur

RUN pisi it --ignore-safety --ignore-dependency autoconf \
            autogen \
            automake \
            binutils \
            bison \
            ccache \
            flex \
            gawk \
            gc \
            gcc \
            gmp \
            gnuconfig \ 
            guile \
            libmpc \
            libtool-ltdl \
            lzo \
            m4 \
            make \ 
            mingetty \
            mpfr \
            pkgconfig \ 
            python-iniparse \ 
            strace \
            yacc

RUN pisi dc
