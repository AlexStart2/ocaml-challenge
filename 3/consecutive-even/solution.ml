
let consecutive_even l = 
  List.fold_left (fun (max, current) x -> 
    if x mod 2 = 0 then 
      (max, current + 1 )
    else if current > max then
      (current, 0) else 
      (max, 0)
    ) (0, 0) l |> fst;;



assert(consecutive_even [] = 0);;
assert(consecutive_even [1;2;3;4;5;6] = 1);; 
assert(consecutive_even [1;2;2;3;4;5] = 2);;
assert(consecutive_even [1;2;3;4;2;5] = 2);;
assert(consecutive_even [1;2;2;3;4;2;5] = 2);;
assert(consecutive_even [1;2;2;2;3;4;2;6;5] = 3);;

Printf.printf "All tests passed!\n";;