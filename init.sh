#!/bin/bash
#
# This script sets up the opam monorepo and runs an initial build.
#
opam update
opam switch create . --empty -y
opam install ocaml-lsp-server ocamlformat opam-monorepo mdx utop -y
opam monorepo lock
opam monorepo pull
eval $(opam env)
dune build
