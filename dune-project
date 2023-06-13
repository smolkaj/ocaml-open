(lang dune 2.8)
(generate_opam_files true)

(name open)
(version 0.3.0)
(license MIT)
(source (github smolkaj/ocaml-open))
(authors "Steffen Smolka <smolka@cs.cornell.edu>, Nathan Guermond")
(maintainers "Steffen Smolka <smolka@cs.cornell.edu>")
(documentation "https://smolkaj.github.io/ocaml-open/")

(package
  (name open)
  (synopsis "Open files in their default applications")
  (depends
   (ocaml (>= 4.02.3))
    dune
    (odoc :with-doc)
  )
)

(package
 (name open_lwt)
 (synopsis "Open files in their default applications")
 (depends
  (ocaml (>= 4.02.3))
  dune
  (odoc :with-doc)
  lwt
 )
)
