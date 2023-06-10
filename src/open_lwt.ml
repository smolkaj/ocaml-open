
let in_default_app_status file : Unix.process_status Lwt.t =
  let os = Base.detect_os () in
  let cmd = Filename.quote_command (Base.open_cmd os) [file] in
  Lwt_process.exec ~stdout:(`Dev_null) (Lwt_process.shell cmd)
    
let in_default_app file : bool Lwt.t =
  Lwt.bind (in_default_app_status file)
    (function
    | Unix.WEXITED 0 -> Lwt.return true
    | _ -> Lwt.return false)
