#!/bin/bash

mkdir new

var1=$(pwd)

var=$(find "$var1" -name '*.jpg' -size +100k)

mv "$var" "$var1/new"

