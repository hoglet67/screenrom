#!/bin/bash

beebasm -i screenrom.asm -o SCREEN -v > screenrom.lst

md5sum SCREEN
