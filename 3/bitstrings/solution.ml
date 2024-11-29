type bitstring = E | Z of bitstring | U of bitstring;;

let rec string_of_bitstring = function
  | E -> ""
  | Z b -> "0" ^ string_of_bitstring b
  | U b -> "1" ^ string_of_bitstring b;;

let len b = String.length (string_of_bitstring b);;

let countZ b = 
  let rec aux b acc = match b with
    | E -> acc
    | Z b -> aux b (acc + 1)
    | U b -> aux b acc
  in aux b 0;;

let countU b =
  let rec aux b acc = match b with
    | E -> acc
    | Z b -> aux b acc
    | U b -> aux b (acc + 1)
  in aux b 0;;

let concat a b = 
  let rec aux a b = match a with
    | E -> b
    | Z a -> Z (aux a b)
    | U a -> U (aux a b)
  in aux a b;;

let equals a b = 
  let rec aux a b = match a, b with
    | E, E -> true
    | Z a, Z b -> aux a b
    | U a, U b -> aux a b
    | _, _ -> false
  in aux a b;;

(* 
tl (Z(U(Z(U (Z E)))))
- : bitstring = U (Z (U (Z E)))

tl E
- : bitstring = E 
*)

let tl b = 
  let rec aux b = match b with
    | E -> E
    | Z b -> b
    | U b -> b
  in aux b;;

let prefix a b = 
  let rec aux a b = match a, b with
    | E, _ -> true
    | Z a, Z b -> aux a b
    | U a, U b -> aux a b
    | _, _ -> false
  in aux a b;;


(* Tests *)

let b = Z(U(Z(U (Z E))));;

assert (string_of_bitstring b = "01010");;
assert (len b = 5);;
assert (countZ b = 3);;
assert (countU b = 2);;
assert (string_of_bitstring (concat (Z(U E)) (U(Z E))) = "0110");;
assert (equals (Z(U E)) (Z(U E)));;
assert (not (equals (Z(U E)) (U(Z E))));;
assert (string_of_bitstring (tl b) = "1010");;
assert (prefix (Z(U E)) (Z(U(Z(U(Z E))))));;
assert (not (prefix (Z(U E)) (U(Z(U(Z E))))));;

Printf.printf "All tests passed.\n";;