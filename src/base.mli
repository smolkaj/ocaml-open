type os =
  | MacOS
  | Linux
  | Windows
  | Cygwin

val detect_os : unit -> os

val open_cmd : os -> string
