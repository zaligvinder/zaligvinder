(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "L]'\r'=g2"))))
(assert (str.in.re y (re.+ (re.* (str.to.re "L\\'SPm")))))
(assert (= (str.len x) 1))
(assert (= (str.to.int y) 10))
(check-sat)
