(set-logic QF_S)
(declare-const x String)
(assert (= x "dcddc"))
(assert (str.in.re x (str.to.re "d*' 'by")))
(check-sat)
