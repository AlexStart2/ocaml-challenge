
let f1 a = a mod 2 = 0;;

let f2 a = if a then 1 else 0;;

let f3 a = if a mod 2 = 0 then (a, true) else (a, false);;

let f4 (a, b) = if b then a mod 2 else a*2;;

let f5 a = fun b -> a + b;;

let f6 a = fun b -> a mod b = 0;;

let f7 a = fun b -> b mod 2 = 0 && a;;

let f8 a = fun b -> if b && a then 1 else 0;;

let f9 a = fun b -> if a then b*2 else b;;

let f10 a b = a+b;;

let f11 a b = if b then a/2 else 0;;

let f12 a b = if a then b/2 else 0;;

let f13 a b = a mod 2 = 0 && b;;

let f14 a b = if a && b then 1 else 0;;

let f15 a = fun (b, c) -> a + b + c;;

let f16 a = fun b -> fun c -> a+b+c;;

let f17 (f_1:int -> int) =  fun a -> f_1 a;;

let f18 (f_1:int -> int) = fun a ->f_1 (f_1 a);;

let f19 (f_1:int -> int) =  fun a -> if a then true else false;;

let f20 (f_1:int -> bool) =  fun a -> if a then 1 else 0;;