
(* let enum_int a = 
  let _ = [] in
    let rec aux n acc = 
        if n = 0 then acc
        else match acc with
        | [] -> aux (n-1) [0]
        | h::t -> if (h > 0 || h = 0) then aux (n-1) ((-(h+1))::acc) else
           aux (n-1) ((-h)::acc)
    in aux a [] |> List.rev;; *)

let enum_int i =
      if i = 0 then 0
      else if i mod 2 = 0 then i / 2
      else -(i / 2 + 1);;
    


assert (List.init 10 enum_int = [0; -1; 1; -2; 2; -3; 3; -4; 4; -5]);;
Printf.printf "enum_int PASSED\n";;