(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "b") (str.to.re "a")))))
(assert (= 3 (str.to.int x)))
(check-sat)
