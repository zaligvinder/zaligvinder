(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "1l")))
(assert (= 2 (str.to.int x)))
(check-sat)
