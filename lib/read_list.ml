(** Read all lines from a file into a string list *)
let read_lines filename = 
  let ic = open_in filename in
  try
    let rec read_all acc =
    try
      let line = input_line ic in
      read_all (line :: acc)
    with End_of_file -> List.rev acc
    in
    let lines = read_all [] in
    close_in ic;
    lines
  with e ->
    close_in_noerr ic;
    raise e

(** Read all lines from a file into a string list, trimming whitespace *)
let read_lines_trimmed filename =
  let trim s = String.trim s in
  List.map trim (read_lines filename)
