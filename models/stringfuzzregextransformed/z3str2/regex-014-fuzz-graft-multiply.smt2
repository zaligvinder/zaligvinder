(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "aabb")))
(assert (str.in.re y (re.+ (str.to.re "aa"))))
(assert (= 6 (str.to.int x)))
(assert (= (str.to.int y) 14))
(check-sat)
