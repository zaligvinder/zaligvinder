(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "dcbP!$")))
(assert (= (str.to.int x) 1))
(check-sat)
