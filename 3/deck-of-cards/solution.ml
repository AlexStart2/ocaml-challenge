type suit = Spades | Hearts | Diamonds | Clubs;;
type card = Card of int * suit;;

(* convert int in a suit) *)
let int_to_suit i = 
  match i with
  | 0 -> Spades
  | 1 -> Hearts
  | 2 -> Diamonds
  | 3 -> Clubs
  | _ -> failwith "int_to_suit: invalid argument";;

let is_complete l = 
  if List.length l <> 40 then
    false
  else
    let rec aux_nr n =
      if n = 11 then
        true
      else
        let rec aux_s s =
          if s = 4 then
            true
          else
          if List.mem(Card(n, int_to_suit s)) l then
            aux_s (s + 1)
          else
           false
          in
          aux_s 0 && aux_nr (n + 1)
      in aux_nr 1;;


(* function that generates a random complete deck of cards *)

let gen_rand_deck () =
  let rec aux l n =
    if n = 40 then
      l
    else
      let c = Card(Random.int 10 + 1, int_to_suit(Random.int 4)) in
      if List.mem c l then
        aux l n
      else
        aux (c::l) (n + 1)
    in
    aux [] 0;;


assert(is_complete (gen_rand_deck()) = true);;

