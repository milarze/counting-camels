(* Read all the lines from a file into a list, trimming whitespace *)
let lines = Counting_camels.Read_list.read_lines_trimmed "todo.txt"
let () = List.iter print_endline lines
