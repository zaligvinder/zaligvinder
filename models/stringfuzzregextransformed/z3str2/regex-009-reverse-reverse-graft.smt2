(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "abcdabcd")))
(assert (str.in.re x (re.* (re.* (str.to.re "abcd")))))
(assert (> 25 20))
(assert (< (str.len x) (str.len x)))
(check-sat)
