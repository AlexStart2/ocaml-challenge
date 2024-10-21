(* hot : unit -> string *)

let hot () = if Random.int(2) = 1 then "head" else "tail";;

(* Test *)

assert (hot () = "head" || hot () = "tail");;

Printf.printf "Tests passed.\n";;