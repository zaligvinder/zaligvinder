(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.* (str.to.re "abab")))))
(assert (str.in.re x (str.to.re "ababac")))
(assert (str.in.re x (re.* (str.to.re "ab"))))
(assert (> (str.len x) 1))
(check-sat)
