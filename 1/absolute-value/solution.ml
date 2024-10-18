let abs_value x = if x < 0 then -x else x 
let abs_value2 x = abs x ;;

(* Test cases *)
assert (abs_value (-5) = 5);;  (* Negative input *)
assert (abs_value 5 = 5);;     (* Positive input *)
assert (abs_value 0 = 0);;     (* Zero input *)
assert (abs_value (-100) = 100);;  (* Another negative input *)
assert (abs_value 100 = 100);;     (* Another positive input *)