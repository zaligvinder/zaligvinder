(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.+ (str.to.re "Y")) (str.to.re "3")))))
(assert (str.in.re y (re.+ (re.union (re.+ (str.to.re "a")) (str.to.re "b")))))
(check-sat)
