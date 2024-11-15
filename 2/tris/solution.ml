
let rnd4 () = (Random.int 10 +1, Random.int 10 +1, Random.int 10 +1, Random.int 10 +1) 

let tris (a,b,c,d) = 
  if a = b && b = c then true
  else if a = b && b = d then true
  else if a = c && c = d then true
  else if b = c && c = d then true
  else false