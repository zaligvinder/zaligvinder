(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "aabbccdd")))
(assert (str.in.re y (str.to.re "aabbccdd")))
(assert (= (str.len x) 12))
(check-sat)
