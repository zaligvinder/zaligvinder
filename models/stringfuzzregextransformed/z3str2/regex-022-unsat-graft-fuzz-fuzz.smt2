(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "")))
(assert (= 0 (str.len x)))
(assert (not (= x "M")))
(assert (not (= x "iV")))
(check-sat)
