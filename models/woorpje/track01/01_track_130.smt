(set-logic QF_S)
(declare-fun A () String)
(assert (= (str.++  "eafbebbfeebfecgfc" "")  (str.++  "eafbebb" A "fecgfc") ))
(check-sat)
(get-model)
