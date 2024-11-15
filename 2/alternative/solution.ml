
(* type 'a option = None | Some of 'a;; *)

let (<|>) a b = match a with
  | None -> b
  | _ -> a;;


assert (Some true <|> Some false = Some true);;
assert (None <|> Some false = Some false);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> Some "dog" = Some "dog");;

Printf.printf "All tests passed!\n";;