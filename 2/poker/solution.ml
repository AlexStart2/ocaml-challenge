type suit = S | H | D | C;;
type card = Card of int * suit;;

(* rndHand : unit -> card * card * card * card * card *)
(* poker : card * card * card * card * card -> bool *)

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

let poker (c1, c2, c3, c4, c5) =
  match (c1, c2, c3, c4, c5) with
  | _ , Card (v2, s2), Card (v3, s3), Card (v4, s4), Card (v5, s5) when v2 = v3 && v3 = v4 && v4 = v5 
  && s2 != s3 && s3 != s4 && s4 != s5 -> true
  | Card (v1, s1), _ , Card (v3, s3), Card (v4, s4), Card (v5, s5) when v1 = v3 && v3 = v4 && v4 = v5
  && s1 != s3 && s3 != s4 && s4 != s5 -> true
  | Card (v1, s1), Card (v2, s2), _ , Card (v4, s4), Card (v5, s5) when v1 = v2 && v2 = v4 && v4 = v5
  && s1 != s2 && s2 != s4 && s4 != s5 -> true
  | Card (v1, s1), Card (v2, s2), Card (v3, s3), _ , Card (v5, s5) when v1 = v2 && v2 = v3 && v3 = v5
  && s1 != s2 && s2 != s3 && s3 != s5 -> true
  | Card (v1, s1), Card (v2, s2), Card (v3, s3), Card (v4, s4), _ when v1 = v2 && v2 = v3 && v3 = v4
  && s1 != s2 && s2 != s3 && s3 != s4 -> true
  | _ -> false;;