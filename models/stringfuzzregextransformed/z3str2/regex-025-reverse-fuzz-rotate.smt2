(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "N") (re.+ (str.to.re "b"))))))
(assert (str.in.re y (re.* (re.union (str.to.re "") (re.+ (str.to.re "V"))))))
(assert (= (str.len x) (str.len y)))
(assert (not (= x y)))
(assert (= (str.to.int x) 6))
(check-sat)
