(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "qqqq")))
(assert (= (str.len x) 5))
(assert (not (= x "qqqqqqqqqqqqqqqqqqqq")))
(check-sat)
