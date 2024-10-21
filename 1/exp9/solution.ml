(* square : int -> int *)

let square x = x * x;;

let exp9 x = square (square (square x)) * x;;

(* Test cases *)
assert (exp9 2 = 512);;
assert (exp9 3 = 19683);;
assert (exp9 4 = 262144);;
assert (exp9 5 = 1953125);;
assert (exp9 6 = 10077696);;
assert (exp9 7 = 40353607);;

Printf.printf "All test cases pass";;