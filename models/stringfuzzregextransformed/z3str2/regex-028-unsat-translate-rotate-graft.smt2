(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.* (str.to.re "jSjSjv")))))
(assert (str.in.re x (re.* (str.to.re "jSjS"))))
(assert (str.in.re x (str.to.re "jS")))
(assert (> 1 (str.len x)))
(check-sat)
