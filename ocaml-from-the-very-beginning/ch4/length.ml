(* normal version *)
let rec length l =
  match l with
  | [] -> 0
  | _ :: t -> 1 + length t

(* tail recursion version *)
let rec length_inner l n =
  match l with
  | [] -> n
  | h :: t -> length_inner t (n + 1)

let length2 l = length_inner l 0
