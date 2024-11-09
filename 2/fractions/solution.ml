
let error_msg = "compare_posfrac: arguments must be positive fractions"

let is_posfrac (a,b) = b<>0 && (a>0 && b>0 || a<0 && b<0)

let compare_posfrac (a,b) (c,d) = if (is_posfrac (a,b) && is_posfrac (c,d)) 
  then match float_of_int(a)/.float_of_int(b),float_of_int(c)/.float_of_int(d) with
| x,y when x=y -> 0
| x,y when x<y -> -1
| _ -> 1
else failwith(error_msg);;

(* Test cases *)

assert (compare_posfrac (1,2) (1,3) = 1);
assert (compare_posfrac (1,2) (1,2) = 0);
assert (compare_posfrac (1,2) (1,1) = -1);
assert (compare_posfrac (1,2) (2,3) = -1);
assert (compare_posfrac (1,2) (2,1) = -1);

try
  let _ = compare_posfrac (1,2) (1,0) in
   assert false (* This should not be reached *)
with Failure msg ->
  assert (msg = error_msg);


Printf.printf "All tests passed!\n"