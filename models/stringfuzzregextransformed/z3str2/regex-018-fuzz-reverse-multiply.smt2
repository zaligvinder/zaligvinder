(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "BBAA") (str.to.re "3322!!$$")))))
(assert (= 18 (str.len x)))
(assert (not (= x "AAcc''nn\\\\\\\\''hh")))
(check-sat)
