(set-logic QF_S)
(declare-const x String)
(assert (= x "edcdcba"))
(assert (str.in.re x (str.to.re "dcba")))
(check-sat)
