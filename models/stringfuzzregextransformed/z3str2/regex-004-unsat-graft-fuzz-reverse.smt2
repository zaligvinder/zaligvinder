(set-logic QF_S)
(declare-const x String)
(assert (= x "ecc'' ''yZ};^s'n\\'>56B"))
(assert (str.in.re x (str.to.re "nO'r")))
(check-sat)
