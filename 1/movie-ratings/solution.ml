
let error_msg = "Ratings must be between 1 and 5"

let masterpiece = "Masterpiece"
let highly_recommended = "Highly Recommended"
let recommended = "Recommended"
let mixed_reviews = "Mixed Reviews"

let movie_rating (critic1:int) (critic2:int) (critic3:int) : string = 
  match critic1, critic2, critic3 with
  | (r1,r2,r3) when r1>5 || r2>5 || r3>5 -> failwith error_msg
  | (r1,r2,r3) when r1<=0 || r2<=0 || r3<=0 -> failwith error_msg
  | _ ->
  if ((critic1 = critic2)&&(critic2=critic3)&&(critic3 = 5)) then masterpiece else
    let fl = float_of_int(critic1+critic2+critic3) in
    let avg = fl /. 3.0 in
    if avg >= 4.5 then highly_recommended else if avg >= 3.5 then recommended else mixed_reviews;;

  


  assert (movie_rating 5 5 5 = masterpiece);

  (* Test for Highly Recommended *)
  assert (movie_rating 5 5 4 = highly_recommended);
  assert (movie_rating 5 4 5 = highly_recommended);
  assert (movie_rating 4 5 5 = highly_recommended);

  (* Test for Recommended *)
  assert (movie_rating 4 4 3 = recommended);
  assert (movie_rating 4 3 4 = recommended);
  assert (movie_rating 3 4 4 = recommended);

  (* Test for Mixed Reviews *)
  assert (movie_rating 3 2 1 = mixed_reviews);
  assert (movie_rating 2 2 2 = mixed_reviews);
  assert (movie_rating 1 2 3 = mixed_reviews);

  (* Test for invalid ratings *)
  try
    let _ = movie_rating 6 4 5 in
    assert false  (* This should not be reached *)
  with Failure msg ->
    assert (msg = error_msg);
  
  try
    let _ = movie_rating 4 0 5 in
    assert false  (* This should not be reached *)
  with Failure msg ->
    assert (msg = error_msg);

  Printf.printf "All tests passed!\n"
