(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "IBzIBz"))
(assert (str.in.re x (re.* (re.* (str.to.re "IBz")))))
(check-sat)
