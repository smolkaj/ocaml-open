type os =
  | MacOS
  | Linux

let detect_os () : os =
  let in_ch,_,_ as uname = Unix.open_process_full "uname" [||] in
  let os = input_line in_ch in
  ignore (Unix.close_process_full uname);
  match os with
  | "Darwin" -> MacOS
  | "Linux" -> Linux
  | _ -> failwith "unknown operating system"

let open_cmd =
  match detect_os () with
  | MacOS -> "open"
  | Linux -> "xdg-open"

let in_default_app file =
  let silence = "> /dev/null 2>&1" in
  Format.sprintf "%s %s %s" open_cmd file silence
  |> Unix.system
  |> ignore
