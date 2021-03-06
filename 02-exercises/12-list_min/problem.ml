open! Base

(* This function finds the largest element in a list: *)
(* val largest : float list -> float *)
let rec largest xs =
  match xs with
<<<<<<< HEAD
  | [] -> Float.neg_infinity
=======
  | []      -> Float.neg_infinity
>>>>>>> e777e1b9b8c50671e7c99d3f504fd51be962e08a
  | x :: ys -> Float.max x (largest ys)

(* Let's write a function to find the smallest element: Hint: the opposite of
   [Float.neg_infinity] is [Float.infinity]. *)
let rec smallest xs =
  match xs with
  | [] -> Float.infinity
  | x :: ys -> Float.min x (smallest ys)

let%test "Testing smallest..." =
  Float.equal Float.infinity (smallest [])
;;

let%test "Testing smallest..." =
  Float.equal 55. (smallest [55.])
;;

let%test "Testing smallest..." =
  Float.equal (-5.) (smallest [5.; (-5.); 1.; (-1.)])
;;

let%test "Testing smallest..." =
  Float.equal 1. (smallest [5.; 5.; 1.; 1.])
;;
