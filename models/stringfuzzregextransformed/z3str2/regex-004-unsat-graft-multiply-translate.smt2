(set-logic QF_S)
(declare-const x String)
(assert (= x "~~eeSS!!SS!!hh"))
(assert (str.in.re x (str.to.re "SS!!hh")))
(check-sat)
