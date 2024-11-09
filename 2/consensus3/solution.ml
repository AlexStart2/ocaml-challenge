
let consensus3 f0 f1 f2 n = 
  match f0 n, f1 n, f2 n with
  | None, _, _ -> None
  | _, None, _ -> None
  | _, _, None -> None
  | Some x, Some y, Some z -> if x = y then Some x else if x = z then Some x else if y = z then Some y else None;;

(* Test cases *)
assert (consensus3 (fun x ->Some x) (fun y -> Some (y+4)) (fun z -> Some(5/z)) 0 = None);;


Printf.printf "%s\n" "All tests passed!"
(* 
  consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 0 undefined
  consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 1 = Some 5
  consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 2 = Some 2
  consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 3 = None *)