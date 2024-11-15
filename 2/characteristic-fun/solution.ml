
let error_msg = "undefined for negative integers"
let f1 x = if x < 0 then failwith error_msg else 0
let f2 x = if x < 0 then failwith error_msg else 
  if x>2 then 0 else 1
let f3 x = if x < 0 then failwith error_msg else 
  if x=0 || x>99 then 0 else 1
let f4 x = if x < 0 then failwith error_msg else 0
let f5 x = if x < 0 then failwith error_msg else 1
let f6 x = if x < 0 then failwith error_msg else 
  if x mod 2 = 0 then 1 else 0
let f7 x = if x < 0 then failwith error_msg else 1
let f8 x = if x < 0 then failwith error_msg else 1
let f9 x = if x < 0 then failwith error_msg else 1
let f10 x = if x < 0 then failwith error_msg else 
  if x > 7 then 1 else 0
let f11 x = if x < 0 then failwith error_msg else
  if x mod 2 = 0 && x < 50 then 1 else 0
let f12 x = if x < 0 then failwith error_msg else
  if x mod 2 = 0 && x < 50 && x > 0 then 1 else 0
let f13 x = if x < 0 then failwith error_msg else 1
let f14 x = if x < 0 then failwith error_msg else 
  if x=1 || x=0 then 1 else 0

let is_prime n =
  let rec is_not_divisor d =
    d * d > n || (n mod d <> 0 && is_not_divisor (d + 1))
  in
  n > 1 && is_not_divisor 2

let f15 x = if x < 0 then failwith error_msg else 
  if is_prime x || x=1 then 1 else 0;;


(* Test cases *)

assert (f1 0 = 0);;
assert (f1 10 = 0);;
assert (try ignore (f1 (-1)); false with Failure _ -> true);;  (* Negative integers are undefined *)
Printf.printf "f1 passed\n";;

assert (f2 0 = 1);;
assert (f2 1 = 1);;
assert (f2 2 = 1);;
assert (f2 3 = 0);;
assert (try ignore (f2 (-1)); false with Failure _ -> true);;
Printf.printf "f2 passed\n";;

assert (f3 50 = 1);;
assert (f3 0 = 0);;
assert (f3 100 = 0);;
assert (f3 101 = 0);;
assert (try ignore (f3 (-1)); false with Failure _ -> true);;
Printf.printf "f3 passed\n";;

assert (f4 0 = 0);;
assert (f4 100 = 0);;
assert (try ignore (f4 (-1)); false with Failure _ -> true);;
Printf.printf "f4 passed\n";;

assert (f5 0 = 1);;
assert (f5 100 = 1);;
assert (try ignore (f5 (-1)); false with Failure _ -> true);;
Printf.printf "f5 passed\n";;

assert (f6 0 = 1);;
assert (f6 2 = 1);;
assert (f6 3 = 0);;
assert (f6 5 = 0);;
assert (try ignore (f6 (-1)); false with Failure _ -> true);;
Printf.printf "f6 passed\n";;

assert (f7 0 = 1);;
assert (f7 100 = 1);;
assert (try ignore (f7 (-1)); false with Failure _ -> true);;
Printf.printf "f7 passed\n";;

assert (f8 0 = 1);;
assert (f8 100 = 1);;
assert (try ignore (f8 (-1)); false with Failure _ -> true);;
Printf.printf "f8 passed\n";;

assert (f9 0 = 1);;
assert (f9 4 = 1);;
assert (f9 5 = 1);;
assert (f9 9 = 1);;
assert (try ignore (f9 (-1)); false with Failure _ -> true);;
Printf.printf "f9 passed\n";;

assert (f10 1 = 0);;
assert (f10 2 = 0);;
assert (f10 0 = 0);;
assert (f10 8 = 1);;
assert (try ignore (f10 (-1)); false with Failure _ -> true);;
Printf.printf "f10 passed\n";;

assert (f11 2 = 1);;
assert (f11 50 = 0);;
assert (f11 3 = 0);;
assert (f11 48 = 1);;
assert (try ignore (f11 (-1)); false with Failure _ -> true);;
Printf.printf "f11 passed\n";;

assert (f12 2 = 1);;
assert (f12 50 = 0);;
assert (f12 1 = 0);;
assert (f12 48 = 1);;
assert (try ignore (f12 (-1)); false with Failure _ -> true);;
Printf.printf "f12 passed\n";;

assert (f13 2 = 1);;
assert (f13 5 = 1);;
assert (f13 10 = 1);;
assert (try ignore (f13 (-1)); false with Failure _ -> true);;
Printf.printf "f13 passed\n";;

assert (f14 0 = 1);;
assert (f14 1 = 1);;
assert (f14 2 = 0);;
assert (f14 100 = 0);;
assert (try ignore (f14 (-1)); false with Failure _ -> true);;
Printf.printf "f14 passed\n";;

assert (f15 1 = 1);;
assert (f15 2 = 1);;
assert (f15 4 = 0);;
assert (f15 7 = 1);;
assert (try ignore (f15 (-1)); false with Failure _ -> true);;
Printf.printf "f15 passed\n";;


Printf.printf "All tests passed!\n"