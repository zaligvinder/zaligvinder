(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "fM"))))
(assert (str.in.re y (re.+ (str.to.re "sWb"))))
(assert (= (str.len x) 2))
(assert (= (str.len y) 8))
(check-sat)
