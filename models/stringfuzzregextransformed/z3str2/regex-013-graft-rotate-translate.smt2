(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re y (str.to.re "J^?]")))
(assert (= 8 (str.len y)))
(check-sat)
