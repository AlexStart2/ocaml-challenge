
let consensus3 (f0, f1, f2) n = 
  try
    match (f0 n, f1 n, f2 n) with
    | Some v0, Some v1, Some v2 ->
        (* Check for consensus among Some values *)
        if v0 = v1 || v0 = v2 then Some v0
        else if v1 = v2 then Some v1
        else None
    | _ -> None  (* If any function returns None *)
  with
  | _ -> None;;

(* Test cases *)
assert (consensus3 ((fun x ->Some x), (fun y -> Some (y+4)), (fun z -> Some (5/z))) 0 = None);;
assert (consensus3 ((fun x ->Some x), (fun y -> Some (y+4)), (fun z -> Some (5/z))) 1 = Some 5);;
assert (consensus3 ((fun x ->Some x), (fun y -> Some (y+4)), (fun z -> Some (5/z))) 2 = Some 2);;
assert (consensus3 ((fun x ->Some x), (fun y -> Some (y+4)), (fun z -> Some (5/z))) 3 = None);;

Printf.printf "%s\n" "All tests passed!"