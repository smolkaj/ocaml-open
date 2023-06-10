
let compile_dot ?(format="pdf") ?(engine="dot") ?(title=engine) data : string =
  Printf.printf "Compiling dot file...\n";
  let output_file = Filename.temp_file ~temp_dir:"." title ("." ^ format) in
  let cmd = Format.sprintf "dot -T%s -o %s" format output_file in
  let dot_process = Unix.open_process_out cmd in
  Printf.fprintf dot_process "%s" data;
  ignore (Unix.close_process_out dot_process);
  Printf.printf "Output saved to %s...\n" output_file;
  output_file

let _ = 
  Printf.printf "Running graphviz test...\n";
  In_channel.open_text "unix.dot"  
  |> In_channel.input_all      (* requires ocaml 4.14.0 *)
  |> compile_dot
  |> Open.in_default_app
  |> Printf.printf "file opened successfully: %b\n"

