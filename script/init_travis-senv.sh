#!/bin/bash
echo "yes" | sudo add-apt-repository ppa:avsm/ppa-testing
sudo apt-get update -qq
sudo apt-get install -qq ocaml ocaml-native-compilers camlp4-extra opam
export OPAMYES=1
opam init
opam install travis-senv
eval `opam config env`
