let x = ref 0

let q = !x

let swap a b =
  let t = !a in
  a := !b ;
  b := t
