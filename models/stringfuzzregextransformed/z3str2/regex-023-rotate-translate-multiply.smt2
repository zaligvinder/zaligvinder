(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "YY")) (str.to.re "QQ")))))
(assert (> (str.len x) 0))
(check-sat)
