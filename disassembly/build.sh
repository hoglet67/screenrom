#!/bin/bash

export PYTHONPATH=../../py8dis/py8dis

for i in 2900 9900
do
    echo "Disassembling #$i version"
    file=screenrom_$i
    python ${file}.py > ${file}.asm
    beebasm -i ${file}.asm -o ${file}.bin
    md5sum ${file}.rom ${file}.bin
done
