(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re y (re.* (re.+ (str.to.re "azY-V%)sjc-x_{t")))))
(assert (= (str.len y) 5))
(check-sat)
