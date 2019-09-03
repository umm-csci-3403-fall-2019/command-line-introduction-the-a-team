#!/bin/bash

NUM=$1
DIR_NAME=$2

tar -zxf "NthPrime.tgz" --directory $DIR_NAME
cd $DIR_NAME
cd "NthPrime"
gcc -o NthPrime main.c nth_prime.c nth_prime.h
./NthPrime $NUM


