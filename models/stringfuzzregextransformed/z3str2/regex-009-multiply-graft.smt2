(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.* (str.to.re "aabbccddaabbccdd")))))
(assert (str.in.re x (str.to.re "aabbccdd")))
(assert (> (str.len x) 40))
(assert (< 50 (str.len x)))
(check-sat)
