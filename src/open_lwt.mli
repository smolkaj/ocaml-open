
(** Opens the given file in the default app associated with the file's type.
    Returns [true] if the open command exits normally, or [false] otherwise.
  *)
val in_default_app : string -> bool Lwt.t

(** Same as above, but returns process status instead.
 *)
val in_default_app_status : string -> Unix.process_status Lwt.t
