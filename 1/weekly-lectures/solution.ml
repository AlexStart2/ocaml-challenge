type weekday = Mo | Tu | We | Th | Fr ;;

type course = ALF | LIP ;;

let isLecture (w:weekday) (c: course) = match (w,c) with
  | (Mo, ALF) -> true
  | (Tu, LIP) -> true
  | (We, ALF) -> true
  | (Th, LIP) -> true
  | (Fr, ALF) -> true
  | _ -> false ;;

(* Test cases for isLecture function *)
assert (isLecture Mo ALF = true);;   (* Monday ALF lecture *)
assert (isLecture Tu LIP = true);;   (* Tuesday LIP lecture *)
assert (isLecture We ALF = true);;   (* Wednesday ALF lecture *)
assert (isLecture Th LIP = true);;   (* Thursday LIP lecture *)
assert (isLecture Fr ALF = true);;   (* Friday ALF lecture *)

(* Test cases for days with no lectures for the courses *)
assert (isLecture Mo LIP = false);;  (* No LIP lecture on Monday *)
assert (isLecture Tu ALF = false);;  (* No ALF lecture on Tuesday *)
assert (isLecture We LIP = false);;  (* No LIP lecture on Wednesday *)
assert (isLecture Th ALF = false);;  (* No ALF lecture on Thursday *)
assert (isLecture Fr LIP = false);;  (* No LIP lecture on Friday *)

(* If all tests pass, print success *)
print_endline "All tests passed!"

