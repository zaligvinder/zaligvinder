(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "aaaabbbb"))))
(assert (str.in.re y (str.to.re "aaaabbbb")))
(assert (= (str.len x) (str.len y)))
(assert (= 8 16))
(check-sat)
