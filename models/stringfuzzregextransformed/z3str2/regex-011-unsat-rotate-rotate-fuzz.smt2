(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "d'\r'y1b"))))
(assert (str.in.re y (re.+ (str.to.re "qgYExBe"))))
(assert (= (str.len x) 6))
(check-sat)
