(lang dune 3.16)

(name project)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name project)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml dune async)
 (tags
  (topics "to describe" your project)))

(executables_implicit_empty_intf true)
(implicit_transitive_deps false)
(using mdx 0.4)
(version 0.0.1)

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
