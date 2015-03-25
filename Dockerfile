#ertugerata/pisi-chroot-farm
FROM ertugerata/pisi-chroot-base
MAINTAINER Ertuğrul Erata <ertugrulerata@gmail.com>

ADD bashrc /root/.bashrc

WORKDIR /root

RUN /sbin/start-stop-daemon -b --start  --pidfile /var/run/dbus/pid --exec /usr/bin/dbus-daemon -- --system

RUN pisi rr farm 

RUN pisi ar farm http://farm.pisilinux.org/.nofarm-repo/x86_64/pisi-index.xml.xz --at 2

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
            yacc \
            
