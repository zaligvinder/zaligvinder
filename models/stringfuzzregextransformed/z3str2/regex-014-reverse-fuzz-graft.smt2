(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "b"))))
(assert (str.in.re y (str.to.re "b")))
(assert (= 0 (str.len x)))
(assert (= (str.to.int y) 5))
(check-sat)
