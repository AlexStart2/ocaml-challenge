
let parrot_trouble (talking: bool) (hour: int) : bool option=
  if (hour < 0 || hour > 23) then
    None else
      if talking && (hour < 7 || hour > 20) then
        Some true
      else
        Some false ;;

(* Test when time is outside valid range *)
assert (parrot_trouble true (-1) = None);;
assert (parrot_trouble true 24 = None);;

(* Test when the parrot is talking during prohibited hours *)
assert (parrot_trouble true 6 = Some true);;
assert (parrot_trouble true 21 = Some true);;

(* Test when the parrot is talking during allowed hours *)
assert (parrot_trouble true 7 = Some false);;
assert (parrot_trouble true 20 = Some false);;

(* Test when the parrot is not talking *)
assert (parrot_trouble false 6 = Some false);;
assert (parrot_trouble false 21 = Some false);;

(* If all tests pass, print success *)
print_endline "All tests passed!"
