(set-logic QF_S)
(declare-fun H () String)
(declare-fun C () String)
(declare-fun G () String)
(assert (= (str.++  "cdfaefabdfa" C "ba")  (str.++  "cdfaefabdfabcaafa" G "ba") ))
(assert (= (str.++  "bcedddafafccaffdbfbbeaadebfc" H "febcab")  (str.++  "bcedddafafccaffdbfbbeaadebfcabdfabfebcab" "") ))
(assert (= (str.++  "dbdafdfbebafbdfcd" H "bfecfebeebeaebdef")  (str.++  "dbdafdfbebafbdfcdabdfabbfecfebeebeaebdef" "") ))
(assert (>=(* (str.len C) 10) 130))
(assert (>=(* (str.len H) 5) 5))
(assert (>=(* (str.len G) 1) 11))
(check-sat)
(get-model)
