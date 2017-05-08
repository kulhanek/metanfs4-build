#!/bin/bash

PREFIX=/opt/metanfs4/2.0

# add cmake from modules if they exist
if type module &> /dev/null; then
    module add cmake
fi

# determine number of available CPUs if not specified
if [ -z "$N" ]; then
    N=1
    type nproc &> /dev/null
    if type nproc &> /dev/null; then
        N=`nproc --all`
    fi
fi

# ------------------------------------------------------------------------------

echo ""
echo ">>> Number of CPUs for building: $N"

# ------------------------------------------------------------------------------

cmake -DCMAKE_INSTALL_PREFIX="$PREFIX" . 2>&1 | tee configure.log || exit 1
make 2>&1 | tee make.log || exit 1
make install 2>&1 | tee install.log || exit 1

echo ""
