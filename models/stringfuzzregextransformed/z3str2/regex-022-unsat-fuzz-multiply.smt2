(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.+ (str.to.re "oo")) (str.to.re "@@")))))
(assert (= (str.to.int x) 8))
(assert (not (= x "00")))
(assert (not (= x "bb")))
(check-sat)
