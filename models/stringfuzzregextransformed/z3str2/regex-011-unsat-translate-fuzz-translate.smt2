(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "dkD"))))
(assert (str.in.re y (re.+ (str.to.re "}ukUM%$"))))
(assert (= (str.to.int x) 2))
(check-sat)
