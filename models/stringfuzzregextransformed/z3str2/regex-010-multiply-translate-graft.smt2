(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "BBqq"))))
(assert (str.in.re x (re.* (re.* (str.to.re "BBqqBBqqBBTT")))))
(assert (str.in.re x (str.to.re "BBqqBBqq")))
(check-sat)
