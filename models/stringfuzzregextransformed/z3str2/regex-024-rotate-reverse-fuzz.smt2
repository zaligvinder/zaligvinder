(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "J") (re.+ (str.to.re ""))))))
(assert (str.in.re y (re.+ (re.++ (str.to.re "O") (re.+ (str.to.re "b"))))))
(check-sat)
