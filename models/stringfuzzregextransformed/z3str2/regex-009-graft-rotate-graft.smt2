(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "abcdabcd"))))
(assert (str.in.re x (str.to.re "abcd")))
(assert (> 20 (str.len x)))
(assert (< 25 (str.len x)))
(check-sat)
