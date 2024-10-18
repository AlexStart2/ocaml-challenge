let error_msg = "Invalid input";;

let win (a: int) (b: int): int =
  match a,b with
  | r1, r2 when r1>5||r1<1||r2>5||r2<1 -> failwith error_msg
  | _ -> match (a+b) mod 2 with
         | 0 -> 1
         | _ -> -1;;

(*test cases*)
assert (win 1 2 = -1);;
assert (win 2 3 = -1);;
assert (win 3 4 = -1);;
assert (win 4 5 = -1);;
assert (win 5 1 = 1);;
assert (win 1 1 = 1);;
assert (win 2 2 = 1);;
assert (win 3 3 = 1);;
assert (win 4 4 = 1);;
assert (win 5 5 = 1);;
assert (win 1 3 = 1);;

try
  let _ = win 4 0 in
    assert false  (* This should not be reached *)
  with Failure msg ->
    assert (msg = error_msg);

    try
      let _ = win 6 5 in
        assert false  (* This should not be reached *)
      with Failure msg ->
        assert (msg = error_msg);

Printf.printf "All tests passed!\n";;