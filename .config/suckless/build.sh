#!/bin/bash

cp config.h config.h.bak
sudo cp config.def.h config.h
sudo make clean install
