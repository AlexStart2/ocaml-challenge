type winner = Player | Computer | Tie ;;

let win (hp,gp) = 
  let hc = Random.int 5 + 1 in
  let gc = Random.int 10 + 1 in
  if gc = 2*hp then ((hc,gc),Computer)
  else if gp = 2*hc then ((hc,gc),Player)
  else ((hc,gc),Tie) ;;