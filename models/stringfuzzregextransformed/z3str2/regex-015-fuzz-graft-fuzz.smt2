(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "@s!P")))
(assert (str.in.re y (re.+ (re.+ (str.to.re "a:3Ac9z'\n'Z+")))))
(assert (= 2 (str.to.int x)))
(assert (= (str.len y) 11))
(check-sat)
