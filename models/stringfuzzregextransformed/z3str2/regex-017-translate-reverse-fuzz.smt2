(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "t'#") (re.union (str.to.re "g;85=") (str.to.re "2"))))))
(assert (= 8 (str.to.int x)))
(check-sat)
