(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "")))
(assert (= (str.to.int x) 9))
(assert (not (= x "pB""^")))
(check-sat)
