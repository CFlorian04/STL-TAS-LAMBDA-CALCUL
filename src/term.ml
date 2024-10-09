type pterm =  Var of string
            | App of pterm * pterm
            | Abs of string * pterm