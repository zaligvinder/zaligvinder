(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "ba"))))
(assert (str.in.re y (re.+ (str.to.re "2jy"))))
(assert (= (str.len x) 0))
(assert (= (str.to.int y) 4))
(check-sat)
