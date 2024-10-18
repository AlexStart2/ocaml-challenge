
type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam v1 v2 v3 =
  let count_accept = (if(v1 = StrongAccept || v1 = WeakAccept) then 1 else 0) +
                      (if(v2 = StrongAccept || v2 = WeakAccept) then 1 else 0) +
                      (if(v3 = StrongAccept || v3 = WeakAccept) then 1 else 0) in
  let count_reject = (if(v1 = StrongReject || v1 = WeakReject) then 1 else 0) +
                      (if(v2 = StrongReject || v2 = WeakReject) then 1 else 0) +
                      (if(v3 = StrongReject || v3 = WeakReject) then 1 else 0) in

                      (* Printf.printf "Accepts: %d, Rejects: %d\n" count_accept count_reject; *)

  if count_accept>=2 && v1 <> StrongReject && v2 <> StrongReject && v3 <> StrongReject then true
  else if count_reject>=2 then false
  else false ;;


  
  assert (decide_exam StrongReject StrongAccept StrongAccept = false);;
  assert (decide_exam StrongReject WeakReject WeakAccept = false);;
  assert (decide_exam WeakReject WeakAccept StrongAccept = true);;
  assert (decide_exam WeakReject WeakReject StrongAccept = false);;
  assert (decide_exam WeakReject WeakReject WeakAccept = false);;
  assert (decide_exam WeakReject WeakReject WeakReject = false);;
  assert (decide_exam WeakAccept WeakAccept WeakAccept = true);;
  assert (decide_exam WeakAccept WeakAccept StrongAccept = true);;
  