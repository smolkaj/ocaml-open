(** Opens the given file in the default app associated with the file's type.
    Filenames are quoted using [Filename.quote].
    Returns [true] if the open command exits normally, or [false] otherwise.
  *)
val in_default_app : string -> bool

(** Same as above, but returns the process status instead.
 *)
val in_default_app_status : string -> Unix.process_status
