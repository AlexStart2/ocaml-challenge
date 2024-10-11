let xor v1 v2 = not (v1 && v2) && (v1 || v2)

let xor2 a b = if a=b then false else true

let xor2 (a:bool) (b:bool) : 
  bool =
    match (a,b) with
    | (true, false) -> true
    | (false, true) -> true
    | _ -> false