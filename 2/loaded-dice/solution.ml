
let dice p = 
  let a = Random.int 100 in
  if a < p then 6 else Random.int 5 + 1