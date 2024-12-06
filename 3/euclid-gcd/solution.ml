
let gcd a b = 
  let rec loop a b =
    if b = 0 then a
    else loop b (a mod b)
  in loop a b


  (* Test cases *)
let () =
(* Same numbers *)
assert (gcd 10 10 = 10);
assert (gcd 0 0 = 0); (* Edge case: gcd of 0 and 0 is undefined, but function returns 0 *)

(* One number is zero *)
assert (gcd 0 15 = 15);
assert (gcd 25 0 = 25);

(* Coprime numbers (GCD = 1) *)
assert (gcd 17 13 = 1);
assert (gcd 9 28 = 1);

(* General cases *)
assert (gcd 48 18 = 6);  (* Standard test case for Euclid's algorithm *)
assert (gcd 56 98 = 14); (* GCD of two non-zero numbers *)
assert (gcd 101 10 = 1); (* Prime number test *)

(* Order of arguments *)
assert (gcd 18 48 = 6);  (* Ensure commutativity *)
assert (gcd 98 56 = 14); (* Order doesn't matter *)

(* Large inputs *)
assert (gcd 1000000000 2 = 2);
assert (gcd 123456789 987654321 = 9);

Printf.printf "All tests passed!\n";;
