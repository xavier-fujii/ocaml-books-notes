let rec lookup x l =
  match l with
  | [] ->
      raise Not_found
  | (k, v) :: t ->
      if k = x then v else lookup x t

let rec add k v d =
  match d with
  | [] ->
      [(k, v)]
  | (k', v') :: t ->
      if k = k' then (k, v) :: t else (k', v') :: add k v t

let rec remove k d =
  match d with
  | [] ->
      []
  | (k', v') :: t ->
      if k = k' then t else (k', v') :: remove k t
