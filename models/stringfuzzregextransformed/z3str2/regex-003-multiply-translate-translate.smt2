(set-logic QF_S)
(declare-const x String)
(assert (= x "BBNNZZrr__BBNNBBNNZZ"))
(assert (str.in.re x (re.* (re.union (str.to.re "rr__BBNN") (str.to.re "BBNNZZ")))))
(check-sat)
