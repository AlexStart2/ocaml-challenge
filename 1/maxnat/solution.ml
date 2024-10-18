let error_msg = "maxnat: negative argument" ;;

let max_nat x y = if x<0 || y<0 then  failwith(error_msg) else if x>y then x else y ;;

(* Test cases *)

(* Test with two positive natural numbers *)
assert (max_nat 5 3 = 5);;  (* x is greater than y *)
assert (max_nat 3 5 = 5);;  (* y is greater than x *)
assert (max_nat 7 7 = 7);;  (* x equals y *)

(* Test with boundary case of zero *)
assert (max_nat 0 5 = 5);;  (* x is zero, y is positive *)
assert (max_nat 5 0 = 5);;  (* x is positive, y is zero *)
assert (max_nat 0 0 = 0);;  (* both x and y are zero *)

(* Test cases where the function should raise an exception *)
try 
  let _ = max_nat (-1) 5 in 
  assert false  (* should not reach this point, must raise an exception *)
with Failure error_msg -> ();;

try 
  let _ = max_nat 5 (-1) in 
  assert false  (* should not reach this point, must raise an exception *)
with Failure error_msg -> ();;

try 
  let _ = max_nat (-1) (-1) in 
  assert false  (* should not reach this point, must raise an exception *)
with Failure error_msg -> ();;

(* If all tests pass, print success *)
print_endline "All tests passed!"