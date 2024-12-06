
let enum_nat_nat n =
  let rec find_pair k i j =
    if k = n then (j, i)
    else if i = 0 then find_pair (k + 1) (j + 1) 0
    else find_pair (k + 1) (i - 1) (j + 1)
  in
  find_pair 0 0 0;;





assert (enum_nat_nat 0 = (0, 0));
assert (enum_nat_nat 1 = (0, 1));
assert (enum_nat_nat 2 = (1, 0));
assert (enum_nat_nat 3 = (0, 2));
assert (enum_nat_nat 4 = (1, 1));
assert (enum_nat_nat 5 = (2, 0));
assert (enum_nat_nat 6 = (0, 3));
assert (enum_nat_nat 7 = (1, 2));
assert (enum_nat_nat 8 = (2, 1));
assert (enum_nat_nat 9 = (3, 0));

Printf.printf "All tests passed!\n"