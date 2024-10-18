
let nand a b = not (a && b);;

assert (nand (not ((true && true))) (nand (not (false)) (nand (false) (true))));;
assert (nand ((not (nand (false) (false)) && (not (false) && (false && false)))) 
(not ((false && true) && not (false))));;
