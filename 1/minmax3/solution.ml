
let minmax3 a b c = (min (min a b) c, max (max a b) c);;

(* Test cases *)
assert (minmax3 3 1 2 = (1, 3));;
assert (minmax3 5 5 5 = (5, 5));;
assert (minmax3 0 10 (-5) = ((-5), 10));;

Printf.printf "All tests passed.\n";;