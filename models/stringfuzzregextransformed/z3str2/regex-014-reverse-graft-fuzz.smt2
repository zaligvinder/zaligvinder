(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "Vz")))
(assert (str.in.re y (re.+ (str.to.re "2' '"))))
(assert (= 4 (str.len x)))
(assert (= (str.len y) 0))
(check-sat)
