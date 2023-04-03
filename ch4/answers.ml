(* Q1 *)
let rec even l =
  match l with
  | [] -> []
  | [a] -> []
  | _ :: a :: t -> a :: even t

(* Q2 *)
let rec count_true l =
  match l with
  | [] -> 0
  | false :: t -> count_true t
  | true :: t -> 1 + count_true t

(* Q2 tail recursive *)
let rec count_true_inner l n =
  match l with
  | [] -> n
  | false :: t -> count_true_inner l n
  | true :: t -> count_true_inner l (n + 1)

let count_true_2 l = count_true_inner l 0
