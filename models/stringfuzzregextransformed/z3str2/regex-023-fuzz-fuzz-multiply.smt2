(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (re.+ (str.to.re "==")) (str.to.re "")))))
(assert (> (str.to.int x) 0))
(check-sat)
