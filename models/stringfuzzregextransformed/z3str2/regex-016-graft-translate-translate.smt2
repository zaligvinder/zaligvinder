(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "123")))
(assert (= (str.len x) 11))
(assert (not (= x "'\\T\\W>123'\\T\\W>")))
(assert (not (= x "'\\T\\W>'\\T\\W>123")))
(check-sat)
