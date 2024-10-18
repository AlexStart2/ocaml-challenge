type season = Spring | Summer | Autumn | Winter

let squirrel_play (temp:int) (season:season) : bool =
  match season with
  | Summer -> temp>=15 && temp<=35
  | _ -> temp>=15 && temp<=30;;


assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;