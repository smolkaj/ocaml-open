(** Opens the given file in the default app associated with the file's type.
    Returns [true] if the open command exits normally, and [false] otherwise.
  *)
val in_default_app : string -> bool
