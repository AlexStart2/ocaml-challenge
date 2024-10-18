
let foo:int -> int -> int -> int -> bool = fun a b c d -> 
  (a=0 || b=0 || c=0 || d=0) && (a=b || b=c || c=d);;
  

  assert (foo 0 0 1 2) ;;
  assert (foo 2 3 0 0) ;;
  
  assert (foo 3 0 0 4) ;;
  assert (foo 4 0 5 0);;
  assert (foo 0 5 0 6);;
  assert (foo 0 6 7 0);;