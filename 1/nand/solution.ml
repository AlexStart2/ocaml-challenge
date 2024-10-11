let b = true

let conj1 b1 b2 = not (b1 && b2)
let conj2 b1 b2 = not b1 || not b2


let conj3 (b1 :bool) (b2 :bool) : 
  bool =
    match (b1,b2) with
    | (true, true) -> false
    | _ -> true