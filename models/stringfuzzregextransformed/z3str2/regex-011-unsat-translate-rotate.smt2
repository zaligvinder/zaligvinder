(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "E'\\t'Dc"))))
(assert (str.in.re y (re.* (str.to.re "E'\\t'Dc"))))
(assert (= (str.len x) 6))
(check-sat)
