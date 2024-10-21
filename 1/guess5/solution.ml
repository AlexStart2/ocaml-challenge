
let error_msg = "The number must be between 0 and 5"
let guess5 a = if(a<1 || a>5) then failwith(error_msg) else 
  let b = Random.int 6 in (a=b, b);;


(* Test case 1: Valid input within range *)
let () = 
  let (is_equal, random_num) = guess5 3 in
  assert (random_num >= 0 && random_num <= 5); (* Random number should be between 0 and 5 *)
  assert (is_equal = (3 = random_num)) (* Test if 'is_equal' matches the comparison *)

(* Test case 2: Valid input within range (edge case) *)
let () = 
  let (is_equal, random_num) = guess5 1 in
  assert (random_num >= 1 && random_num <= 5); (* Random number should be between 0 and 5 *)
  assert (is_equal = (1 = random_num)) (* Test if 'is_equal' matches the comparison *)

(* Test case 3: Invalid input below range *)
let () = 
  try
    let _ = guess5 (-1) in
    assert false (* Should not reach this line *)
  with Failure msg -> assert (msg = error_msg)

(* Test case 4: Invalid input above range *)
let () = 
  try
    let _ = guess5 6 in
    assert false (* Should not reach this line *)
  with Failure msg -> assert (msg = error_msg)

(* Test case 5: Valid input within range (edge case) *)
let () = 
  let (is_equal, random_num) = guess5 5 in
  assert (random_num >= 0 && random_num <= 5); (* Random number should be between 0 and 5 *)
  assert (is_equal = (5 = random_num)); (* Test if 'is_equal' matches the comparison *)


Printf.printf "All test cases pass\n";;