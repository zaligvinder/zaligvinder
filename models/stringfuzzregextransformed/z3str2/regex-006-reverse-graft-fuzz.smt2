(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "Ag9LU~-_7Xvcbjlu"))
(assert (str.in.re x (str.to.re "Y\\a")))
(check-sat)
