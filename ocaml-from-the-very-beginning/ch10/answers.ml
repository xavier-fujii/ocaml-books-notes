type 'a tree = Branch of 'a * 'a tree * 'a tree | Leaf

(* Q1 *)
let rec is_in_tree ele tr =
  match tr with
  | Leaf ->
      false
  | Branch (k, l, r) ->
      k = ele || is_in_tree ele l || is_in_tree ele r

(* Q2 *)
let rec flip_a_tree tr =
  match tr with
  | Leaf ->
      Leaf
  | Branch (k, l, r) ->
      Branch (k, flip_a_tree r, flip_a_tree l)

(* Q3 *)
let rec is_same_shpae tr1 tr2 =
  match (tr1, tr2) with
  | Leaf, Leaf ->
      true
  | Leaf, _ ->
      false
  | _, Leaf ->
      false
  | Branch (k1, l1, r1), Branch (k2, l2, r2) ->
      is_same_shpae l1 l2 && is_same_shpae r1 r2

(* Q4 *)

let rec tree_of_list_helper1 tr k v =
  match tr with
  | Leaf ->
      Branch ((k, v), Leaf, Leaf)
  | Branch ((k', v'), l, r) ->
      if k < k' then Branch ((k', v'), tree_of_list_helper1 l k v, r)
      else if k = k' then Branch ((k, v), l, r)
      else Branch ((k, v), l, tree_of_list_helper1 r k v)

let rec tree_of_list_helper2 tr lst =
  match lst with
  | [] ->
      tr
  | (k, v) :: t ->
      tree_of_list_helper2 (tree_of_list_helper1 tr k v) t

let tree_of_list lst = tree_of_list_helper2 Leaf lst

(* Q5 *)
(* just turn tree back to list, join them, then transform it to a
   tree *)
