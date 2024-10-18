type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

let isLecture (w:weekday) (c: course) = match (w,c) with
  | (Mo, ALF) -> true
  | (Tu, LIP) -> true
  | (We, ALF) -> true
  | (Th, LIP) -> true
  | (Fr, ALF) -> true
  | _ -> false