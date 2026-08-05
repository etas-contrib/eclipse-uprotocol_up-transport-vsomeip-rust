#!/bin/bash
#
# Installs dependencies for building native code on Linux

sudo apt-get update
sudo apt-get install -y build-essential cmake jq libboost-all-dev libclang-dev doxygen asciidoc
