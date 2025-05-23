#!/bin/bash
#
# This script sets up the opam monorepo and runs an initial build.
#
opam update
opam switch create . --empty -y --repos default,dune-universe=https://github.com/dune-universe/opam-overlays.git
opam switch set-invariant ocaml-base-compiler
echo "Now running \`eval \$(opam env)\`"
eval $(opam env)
opam install ocaml-lsp-server ocamlformat opam-monorepo mdx utop -y
opam monorepo lock
opam monorepo pull
dune build
