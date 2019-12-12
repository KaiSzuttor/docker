#!/bin/sh

docker run ${1} /bin/sh -c "\
git clone https://github.com/espressomd/espresso --depth=1
cd espresso
mkdir build
cd build
cmake .. && cmake --build ."
