(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "$!23")))
(assert (= 9 (str.len x)))
(assert (not (= x "h'\\\\n'cA")))
(check-sat)
