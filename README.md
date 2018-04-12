# ocaml-open
Conveniently open files such as PDFs in their default applications straigt from OCaml.

## Quick start
You can install the library using `opam`:
```
$ opam install open
```
Then in `utop` or `ocaml`,
```
$ ocaml
> #require "open";;
> Open.in_default_app "/home/steffen/ocaml.svg";;
- : unit = ()
```
![OCaml](http://ocaml.org/logo/Colour/SVG/colour-logo.svg)

## API
The tiny API is documented [here](https://smolkaj.github.io/ocaml-open/).


## Building from source

### Dependencies
The library requires [`dune`](https://github.com/ocaml/dune) (formerly known as jbuilder) to build, but has no other dependencies.

### Build and Examples
Run `make` to build and `make test` to see the library in action. This should open several files from the `examples/basic` folder.

There is also a more sophisticated example in `examples/graphviz` that requires graphivz and Jane Street's [`core`](https://opensource.janestreet.com/core/) (version v0.9.0 or higher). You can build & run it as follows:
```
jbuilder build @graphviz
```

## Limitations and Implementation
The library has been tested under Linux and MacOS and will likely not run under Windows/Cygwin. It uses `xdg-open` on Linux and `open` on MacOS.

## Suggestion and Contributions
Suggestions and contributions are always welcome. Feel free to submit pull requests.
