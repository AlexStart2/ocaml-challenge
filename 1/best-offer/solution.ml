
let best_offer (a: int option) (b: int option) (c: int option): int option =
  match a,b,c with
  | None,None,None -> None
  | None,None,Some c -> Some c
  | None,Some b,None -> Some b
  | None,Some b,Some c -> Some (max b c)
  | Some a,None,None -> Some a
  | Some a,None,Some c -> Some (max a c)
  | Some a,Some b,None -> Some (max a b)
  | Some a,Some b,Some c -> Some (max a (max b c));;

  (* Test for three offers with valid values *)
  assert (best_offer (Some 100) (Some 200) (Some 150) = Some 200);

  (* Test for two offers valid and one None *)
  assert (best_offer (Some 100) None (Some 150) = Some 150);
  assert (best_offer None (Some 300) (Some 250) = Some 300);
  
  (* Test for one offer valid and two None *)
  assert (best_offer (Some 100) None None = Some 100);
  assert (best_offer None (Some 250) None = Some 250);
  assert (best_offer None None (Some 400) = Some 400);
  
  (* Test for all offers None *)
  assert (best_offer None None None = None);
  
  (* Test for mixed offers with None and valid values *)
  assert (best_offer (Some 50) (Some 200) None = Some 200);
  assert (best_offer (Some 0) (Some 0) (Some 0) = Some 0);
  assert (best_offer (Some (-10)) (Some 10) (Some 5) = Some 10);  (* Negative offer should not affect the max *)

  Printf.printf "All tests passed!\n"


