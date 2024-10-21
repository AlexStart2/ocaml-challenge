
let in_range (x:int) (a:int) (b:int) :bool = (x>a && x<b);;

(*Test*)
assert(in_range 4 5 6 = false);;
assert(in_range 4 3 6 = true);;
assert(in_range 4 4 6 = false);;
assert(in_range 100 (-6) 50 = false);;
assert(in_range 0 (-20) 6 = true);;


Printf.printf "All tests passed!\n"