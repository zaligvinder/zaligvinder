(set-logic QF_S)
(declare-fun B () String)
(declare-fun C () String)
(assert (= (str.++  "fabeafbgdaggecacdcadgfbgegfdfeebcggecaaebcefabgaaecdbddcfd" B "fccabggdaedcafgcbadaagdaaebc")  (str.++  "fabeafbgdaggecacdcadgfbgegfdfeebcggecaaebcefab" C "ecfdecdcfaagfaeeaccbafccabggdaedcafgcbadaagdaaebc") ))
(check-sat)
(get-model)
