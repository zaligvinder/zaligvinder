(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "p<")))
(assert (str.in.re y (str.to.re "p<")))
(assert (= 2 (str.len x)))
(assert (= 4 (str.len y)))
(check-sat)
