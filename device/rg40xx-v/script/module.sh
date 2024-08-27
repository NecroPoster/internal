#!/bin/sh

MODULES="mali_kbase"

for KMOD in $MODULES; do
    insmod /lib/modules/"$KMOD".ko || printf "Failed to load %s module\n" "$KMOD"
done
