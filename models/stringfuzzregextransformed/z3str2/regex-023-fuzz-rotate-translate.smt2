(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.* (str.to.re "p")) (str.to.re "T")))))
(assert (> (str.to.int x) 0))
(check-sat)
