(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "{^AS8vaD"))))
(assert (str.in.re y (re.+ (re.* (str.to.re "L+RW4")))))
(assert (= (str.to.int x) 2))
(assert (= (str.to.int y) 13))
(check-sat)
