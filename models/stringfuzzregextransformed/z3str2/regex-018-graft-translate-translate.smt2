(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "Qp"))))
(assert (= (str.len x) 5))
(assert (not (= x "123Qp")))
(check-sat)
