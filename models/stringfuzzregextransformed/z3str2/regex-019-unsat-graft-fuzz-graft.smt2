(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "")))
(assert (= 1 (str.len x)))
(assert (not (= x "dP9..\\\\")))
(check-sat)
