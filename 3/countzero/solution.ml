
let countzero f a b = 
  let rec aux f a b acc =
    if a>b then acc
    else if f a = 0 then aux f (a+1) b (acc+1)
    else aux f (a+1) b acc
  in aux f a b 0;;


assert (countzero (fun x -> x) (-10) 10 = 1);;

assert (countzero (fun x -> x) 1 10 = 0);;

assert (countzero (fun x -> x*x - 1) (-10) 10 = 2);;

assert (countzero (fun x -> (if x<0 then -x else x) - 1) (-10) 10 = 2);;

Printf.printf "Tests passed.\n";;