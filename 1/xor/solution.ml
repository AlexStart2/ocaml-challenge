let xor v1 v2 = not (v1 && v2) && (v1 || v2)

let xor2 a b = if a=b then false else true

let xor2 (a:bool) (b:bool) : 
  bool =
    match (a,b) with
    | (true, false) -> true
    | (false, true) -> true
    | _ -> false ;;

(* Test cases for xor function *)
assert (xor true false = true);;    (* True XOR False -> True *)
assert (xor false true = true);;    (* False XOR True -> True *)
assert (xor true true = false);;    (* True XOR True -> False *)
assert (xor false false = false);;  (* False XOR False -> False *)

(* Test cases for xor2 (if-based) function *)
assert (xor2 true false = true);;    (* True XOR False -> True *)
assert (xor2 false true = true);;    (* False XOR True -> True *)
assert (xor2 true true = false);;    (* True XOR True -> False *)
assert (xor2 false false = false);;  (* False XOR False -> False *)

(* Test cases for xor2 (match-based) function *)
assert (xor2 true false = true);;    (* True XOR False -> True *)
assert (xor2 false true = true);;    (* False XOR True -> True *)
assert (xor2 true true = false);;    (* True XOR True -> False *)
assert (xor2 false false = false);;  (* False XOR False -> False *)

(* If all tests pass, print success *)
print_endline "All tests passed!"
