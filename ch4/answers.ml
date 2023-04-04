let rec rev l =
  match l with
  | [] -> []
  | h :: t -> rev t @ [h]

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

(* Q3 *)
let build_palindrome l = l @ rev l

let is_palindrome l = l = rev l

(* Q4 *)
let drop_first l =
  match l with
  | [] -> []
  | h :: t -> t

let drop_last l = drop_first (rev l)

(* Q5 *)
let rec member ele lst =
  match lst with
  | [] -> false
  | h :: t -> if h = ele then true else member ele t

(* Q6 *)

let rec make_set lst =
  match lst with
  | [] -> []
  | h :: t -> if member h t then t else h :: make_set t

(* Q7 *)

let rec rev_helper l acc =
  match l with
  | [] -> acc
  | h :: t -> rev_helper (h :: acc) t

let rec rev2 l = rev_helper l []
