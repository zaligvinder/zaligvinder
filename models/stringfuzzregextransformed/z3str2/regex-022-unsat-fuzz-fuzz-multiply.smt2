(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.* (str.to.re "ll")) (str.to.re "")))))
(assert (= (str.to.int x) 10))
(assert (not (= x "bb")))
(assert (not (= x "AA")))
(check-sat)
