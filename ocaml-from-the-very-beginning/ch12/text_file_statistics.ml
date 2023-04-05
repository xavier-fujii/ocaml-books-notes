let channel_statistics in_channel =
  let lines = ref 0 in
  try
    while true do
      let line = input_line in_channel in
      lines := !lines + 1
    done
  with End_of_file ->
    print_string "There were " ;
    print_int !lines ;
    print_string " lines." ;
    print_newline ()

let file_statistics name =
  let channel = open_in name in
  try
    channel_statistics channel ;
    close_in channel
  with _ -> close_in channel
