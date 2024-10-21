
let seven_eleven_doubles () = 
  let (d1, d2) = (Random.int 6 + 1, Random.int 6 + 1) in
  (d1=d2 || d1+d2=7 || d1+d2=11, d1, d2);;

(*Test cases*)

let () = 
  let (b, d1, d2) = seven_eleven_doubles () in
  assert(d1>=1 && d1<=6);
  assert(d2>=1 && d2<=6);
  assert(b = (d1=d2 || d1+d2=7 || d1+d2=11));;

Printf.printf "All test cases pass\n";;
