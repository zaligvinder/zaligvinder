(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "lA~&94i&/|6ZY"))
(assert (str.in.re x (re.+ (str.to.re "3'\x0c';%`"))))
(check-sat)
