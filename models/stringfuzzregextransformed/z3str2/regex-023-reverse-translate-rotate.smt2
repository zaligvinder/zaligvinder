(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "z") (re.* (str.to.re "S"))))))
(assert (> (str.len x) 0))
(check-sat)
