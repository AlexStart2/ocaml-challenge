
let bounce n x = 
  if n = 0 then 0 else
    if x mod n = 0 
      then 
        if x/n mod 2 = 1
          then n
        else 0
      else let a = x/n in 
        if a mod 2 = 0 
          then x mod n
        else n - x mod n;;



(* Test cases *)
assert (bounce 3 3 = 3);;
assert (bounce 3 4 = 2);;
assert (bounce 3 5 = 1);;
assert (bounce 3 6 = 0);;
assert (bounce 3 7 = 1);;
assert (bounce 3 8 = 2);;
assert (bounce 3 9 = 3);;
assert (bounce 3 10 = 2);;
assert (bounce 3 11 = 1);;
assert (bounce 3 12 = 0);;
assert (bounce 3 13 = 1);;
assert (bounce 3 14 = 2);;
assert (bounce 3 15 = 3);;
assert (bounce 3 16 = 2);;
assert (bounce 3 17 = 1);;
assert (bounce 3 18 = 0);;
assert (bounce 3 19 = 1);;
assert (bounce 3 20 = 2);;
assert (bounce 3 21 = 3);;
assert (bounce 3 22 = 2);;
assert (bounce 3 23 = 1);;
assert (bounce 3 24 = 0);;


assert (bounce 4 4 = 4);;
assert (bounce 4 5 = 3);;
assert (bounce 4 6 = 2);;
assert (bounce 4 7 = 1);;
assert (bounce 4 8 = 0);;
assert (bounce 4 9 = 1);;
assert (bounce 4 10 = 2);;
assert (bounce 4 11 = 3);;
assert (bounce 4 12 = 4);;
assert (bounce 4 13 = 3);;
assert (bounce 4 14 = 2);;
assert (bounce 4 15 = 1);;
assert (bounce 4 16 = 0);;
assert (bounce 4 17 = 1);;
assert (bounce 4 18 = 2);;
assert (bounce 4 19 = 3);;
assert (bounce 4 20 = 4);;


Printf.printf "All tests passed.\n";;