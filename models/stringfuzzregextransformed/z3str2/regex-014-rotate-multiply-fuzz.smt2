(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "ab"))))
(assert (str.in.re y (re.* (str.to.re "aRb"))))
(assert (= (str.to.int x) 7))
(assert (= (str.len y) 9))
(check-sat)
