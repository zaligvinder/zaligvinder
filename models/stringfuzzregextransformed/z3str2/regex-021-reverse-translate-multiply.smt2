(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "RR") (re.* (str.to.re "''\\\\nn''"))))))
(assert (= (str.len x) 4))
(check-sat)
