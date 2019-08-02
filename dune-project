(lang dune 1.10)
(generate_opam_files true)

(name open)
(version 0.2.2)
(license MIT)
(source (github smolkaj/ocaml-open))
(authors "Steffen Smolka <smolka@cs.cornell.edu>")
(maintainers "Steffen Smolka <smolka@cs.cornell.edu>")
(documentation "https://smolkaj.github.io/ocaml-open/")

(package
  (name open)
  (synopsis "Open files in their default applications")
  (depends
    (ocaml (>= 4.02.3))
    (dune (and :build (>= 1.10)))
    (odoc :with-doc)
  )
)
