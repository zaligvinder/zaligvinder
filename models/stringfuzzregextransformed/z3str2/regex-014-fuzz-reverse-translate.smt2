(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "el"))))
(assert (str.in.re y (re.+ (str.to.re "l"))))
(assert (= (str.to.int x) 3))
(assert (= (str.to.int y) 7))
(check-sat)
