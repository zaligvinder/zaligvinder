(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "ddccbbaa")))
(assert (= (str.len x) 22))
(assert (not (= x "ddccbbaa332211ddccbbaa")))
(assert (not (= x "332211ddccbbaaddccbbaa")))
(check-sat)
