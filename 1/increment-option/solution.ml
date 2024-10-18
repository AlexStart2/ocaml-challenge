let incr_opt (a: int option) : int option =
  match a with
  | None -> None
  | Some x -> Some (x + 1);;


(*Some test*)
assert (incr_opt None = None);;
assert (incr_opt (Some 1) = Some 2);;
assert (incr_opt (Some 0) = Some 1);;
assert (incr_opt (Some (-1)) = Some 0);;
assert (incr_opt (Some 100) = Some 101);;
assert (incr_opt (Some 1000000) = Some 1000001);;

print_endline "All tests passed!"