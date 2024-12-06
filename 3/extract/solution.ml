
let rec remove_at index lst =
  match lst with
  | [] -> []  (* If the list is empty, return an empty list *)
  | _::t when index = 0 -> t  (* If index is 0, remove the head and return the tail *)
  | h::t -> h :: remove_at (index - 1) t  (* Otherwise, recursively process the tail *)

let extract a ls = if a < 0 || a >= List.length ls then failwith "index out of bounds" else 
  (List.nth ls a, remove_at a ls)
