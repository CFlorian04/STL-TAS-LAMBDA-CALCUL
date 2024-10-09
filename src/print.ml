let rec print_term (t : pterm) : string =
  match t with
    Var x -> x
    | App (t1 , t2) -> "(" ˆ ( print_term t1) ˆ" "ˆ ( print_term t2) ˆ ")"
    | Abs (x, t) -> "(fun "ˆ x ˆ" -> " ˆ ( print_term t) ˆ")"