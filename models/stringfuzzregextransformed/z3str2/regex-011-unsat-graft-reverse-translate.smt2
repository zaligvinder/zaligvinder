(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.* (str.to.re "TN-Q")))))
(assert (str.in.re y (str.to.re "TN-Q")))
(assert (= 6 (str.len x)))
(check-sat)
