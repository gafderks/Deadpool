#!/bin/bash

NAME=$1
ID=$2

cp -R wbs_aes_ches2017_clever wbs_aes_ches2017_$NAME

cd wbs_aes_ches2017_$NAME/target
rm -f clever.c

wget https://run.whibox.cr.yp.to:5443/show/candidate/$ID --no-check-certificate 

mv $ID $NAME.c

mv clever.h $NAME.h

sed -i -- "s/clever/$NAME/g" *

make
