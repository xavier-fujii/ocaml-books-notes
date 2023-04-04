let rec merge x y =
  match (x, y) with
  | [], l -> l
  | l, [] -> l
  | hx :: tx, hy :: ty ->
      if hx < hy then hx :: merge tx (hy :: ty)
      else hy :: merge (hx :: tx) ty

(* not safe *)
let rec drop n l =
  if n = 0 then l
  else
    match l with
    | [] -> []
    | h :: t -> drop (n - 1) t

(* not safe *)
let rec take n l =
  if n = 0 then []
  else
    match l with
    | [] -> []
    | h :: t -> h :: take (n - 1) t

let rec msort l =
  match l with
  | [] -> []
  | [x] -> [x]
  | _ ->
      let left = take (List.length l / 2) l in
      let right = drop (List.length l / 2) l in
      merge (msort left) (msort right)
