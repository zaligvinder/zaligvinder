(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.+ (str.to.re "8a")))))
(assert (str.in.re y (str.to.re "a")))
(assert (= 0 (str.len x)))
(assert (= (str.to.int y) 7))
(check-sat)
