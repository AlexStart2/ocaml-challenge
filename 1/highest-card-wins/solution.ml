type card = Joker | Val of int;;
let error_msg = "Card is not in the range";;
let is_valid (a:int)(b:int):bool = a >=1 && a <=10 && b >=1 && b <=10;; 

let win (a:card)(b:card): bool = match a, b with
| Joker, Joker -> false
| Joker, _ -> true
| _, Joker -> false
| Val x,Val y -> if(is_valid x y) then x > y else failwith(error_msg);;

(* Test cases *)

assert (win (Val 1) (Val 2) = false);;
assert (win (Val 2) (Val 1) = true);;
assert (win (Val 1) (Val 1) = false);;
assert (win (Val 1) (Joker) = false);;
assert (win (Joker) (Val 1) = true);;
assert (win (Joker) (Joker) = false);;

try
  let _ = win (Val 4) (Val 0) in
    assert false  (* This should not be reached *)
  with Failure msg ->
    assert (msg = error_msg);

Printf.printf "All test cases pass";;