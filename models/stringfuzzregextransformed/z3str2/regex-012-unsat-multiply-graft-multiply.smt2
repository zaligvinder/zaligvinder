(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "111122223333")))
(assert (= (str.len x) 20))
(check-sat)
