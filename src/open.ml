

let in_default_app_status file : Unix.process_status =
  let os = Base.detect_os () in
  (Filename.quote_command (Base.open_cmd os) [file])
  |> Unix.open_process_out
  |> Unix.close_process_out

let in_default_app file : bool =
  in_default_app_status file
  |> function
    | Unix.WEXITED 0 -> true
    | _ -> false
