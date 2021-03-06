(set-logic QF_S)
(declare-fun I () String)
(declare-fun H () String)
(declare-fun F () String)
(declare-fun J () String)
(declare-fun C () String)
(assert (= (str.++  "e" I "bab" F "bececbacfcdede")  (str.++  "e" C "ddcfffbbcc" J "fbaddbececbacfcdede") ))
(assert (= (str.++  "abbf" C "dcaaecceeabfeebdddaeabbaacabdcad")  (str.++  "abbf" C "dcaaecceeabfeebdddaeabbaacabdcad") ))
(assert (= (str.++  "eaebdabffddbabededcebcebddb" H "ecefdcbdf")  (str.++  "eaebdabffddbabededcebcebddb" H "ecefdcbdf") ))
(assert (<=(* (str.len C) 1) 24))
(assert (>=(* (str.len J) 14) 56))
(assert (<=(* (str.len J) 13) 1105))
(assert (<=(* (str.len I) 17) 306))
(assert (<=(* (str.len H) 4) 236))
(assert (<=(* (str.len F) 3) 60))
(check-sat)
(get-model)
