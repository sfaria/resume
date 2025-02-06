#!/bin/bash

echo "Cleaning old dist."
make clean

echo "Building..."
docker run --rm --user $(id -u):$(id -g) -i -w "/doc" -v "$PWD":/doc thomasweise/texlive make