(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "aaaa")) (str.to.re "bbbb")))))
(assert (str.in.re y (re.* (str.to.re "aaaa"))))
(assert (= (str.len x) (str.len y)))
(assert (not (= x y)))
(assert (= 28 (str.len x)))
(check-sat)
