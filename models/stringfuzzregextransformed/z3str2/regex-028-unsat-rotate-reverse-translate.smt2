(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "uP"))))
(assert (str.in.re x (re.* (str.to.re "uPuP"))))
(assert (str.in.re x (re.* (str.to.re ".PuPuP"))))
(assert (> (str.len x) 1))
(check-sat)
