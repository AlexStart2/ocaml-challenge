
type grade = Val of int | CumLaude;;

let error_msg = "Invalid grade";;

let is_valid (g: grade) : bool =
  match g with
  | Val x -> x >= 18 && x <= 30
  | CumLaude -> true;;

let int_of_grade (g: grade) : int =
  match g with
  | Val x -> x
  | CumLaude -> 32;;

let avg l = 
  let rec avg_aux l n =
    match l with
    | [] -> n
    | h::t -> if is_valid h then avg_aux t (n + int_of_grade h) 
    else failwith error_msg
  in float_of_int (avg_aux l 0) /.  float_of_int (List.length(l));;


(* Test cases *)

assert (avg [Val 20; Val 30; Val 25] = 25.);;
assert (avg [Val 20; Val 30; Val 25; CumLaude] = 26.75);;

try
  let _ = avg [Val 20; Val 30; Val 25; Val 31] in
  assert false (* This should not be reached *)
with
  Failure msg -> assert (msg = error_msg);


Printf.printf "All tests passed!\n";;