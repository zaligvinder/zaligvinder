(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "\\\\a"))))
(assert (str.in.re x (re.* (str.to.re "\\\\a\\\\a"))))
(assert (str.in.re x (re.* (str.to.re "&a\\\\a\\\\a"))))
(assert (> (str.len x) 1))
(check-sat)
