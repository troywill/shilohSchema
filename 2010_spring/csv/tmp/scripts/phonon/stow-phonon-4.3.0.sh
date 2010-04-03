#!/bin/bash
set -o errexit
PACKAGE="phonon"
VERSION="4.3.0"
PACKAGER="TDW <troydwill@gmail.com>"
DATE="2009-12-12"
PREFIX="/usr"
TARGET="/"
STOW_DIR="/stow"
SUDO="sudo"

PACKAGE_DIR=${PACKAGE}-${VERSION}

do_configure () {
    cmake -DCMAKE_INSTALL_PREFIX:PATH=${PREFIX} . 2>&1 | tee log.stow.configure
}

do_build () {
    make 2>&1 | tee log.stow.make
}

do_install () {
    ${SUDO} make DESTDIR=${STOW_DIR}/${PACKAGE_DIR} install 2>&1 | tee log.stow.install
}

do_stow () {
    ${SUDO} stow --verbose --target=${TARGET} --dir=${STOW_DIR} ${PACKAGE_DIR}
}

do_poststow () {
    echo "postow"
}

do_package () {
    cd /tmp
    ${SUDO} tar -jcf ${PACKAGE_DIR}.stow.tar.bz2 ${STOW_DIR}${PACKAGE_DIR}
}

do_configure
do_build
do_install
do_stow
do_poststow
# do_package
exit
