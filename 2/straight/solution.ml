
type suit = S | H | D | C;;
type card = Card of int * suit;;

let rndHand () = 
  let rndCard () = 
    let rndSuit () = 
      match Random.int 4 with
      | 0 -> S
      | 1 -> H
      | 2 -> D
      | 3 -> C
      | _ -> failwith "impossible"
    in
    Card(Random.int 13 + 1, rndSuit ())
  in
  (rndCard (), rndCard (), rndCard (), rndCard (), rndCard ());;

let straight (c1, c2, c3, c4, c5) = 
  let cards = [c1; c2; c3; c4; c5] in
  let values = List.map (fun (Card (v, _)) -> v) cards in
  let sorted = List.sort compare values in
  let rec straight' = function
    | [] | [_] -> true
    | h1 :: h2 :: t -> if h2 - h1 = 1 then straight' (h2 :: t) else false
  in
  straight' sorted;;