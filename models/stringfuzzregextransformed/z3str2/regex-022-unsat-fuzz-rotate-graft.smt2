(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "a") (re.* (str.to.re "b"))))))
(assert (= 3 (str.to.int x)))
(assert (not (= x "bb")))
(assert (not (= x "A")))
(check-sat)
