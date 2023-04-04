let rec map f l =
  match l with
  | [] -> []
  | h :: t -> f h :: map f t

let evnes l = map (fun x -> x mod 2 = 0) l
