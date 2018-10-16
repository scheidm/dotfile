#!/bin/bash
base="\w\[\033[00m\]/@${HOSTNAME%%.*}~FOO~=^_^="
echo "base: $base \n"
project=${1/\//}
PS1=${base/FOO/$project}
cd $1
for i in $(find -L . -maxdepth 1 -mindepth 1 -type d)
do
    echo "i:$i" && cd $i && make ; sudo make install ; cd ../;
done
cd ..
