open Core

let command =
  Command.basic
    ~summary:"Project"
    (let%map_open.Command () = return () in
     fun () -> print_endline "Hello, world!")
;;

let%expect_test _ =
  print_endline "foo";
  [%expect {| foo |}]
;;
