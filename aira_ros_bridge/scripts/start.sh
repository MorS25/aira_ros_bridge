#!/bin/sh

PKGDIR=$(dirname $0)/..

NODEJS=/usr/bin/nodejs
if [ -x /usr/bin/node ]; then
    NODEJS=/usr/bin/node
fi

${NODEJS} ${PKGDIR}/start.js $1 $2 $3 
