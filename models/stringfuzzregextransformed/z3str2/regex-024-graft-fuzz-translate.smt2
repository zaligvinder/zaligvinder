(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.* (str.to.re "j")) (str.to.re "")))))
(assert (str.in.re y (re.+ (str.to.re "`"))))
(check-sat)
