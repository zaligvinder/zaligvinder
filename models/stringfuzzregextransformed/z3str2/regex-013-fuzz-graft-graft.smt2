(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re y (str.to.re "ab$!Pd")))
(assert (= (str.len y) 6))
(check-sat)
