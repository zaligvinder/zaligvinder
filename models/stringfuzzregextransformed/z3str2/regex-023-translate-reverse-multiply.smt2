(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "RR") (re.* (str.to.re "ii"))))))
(assert (> (str.len x) 0))
(check-sat)
