(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "6")))
(assert (= (str.to.int x) 3))
(assert (not (= x "Y/@Q/u'\n'L|e^..7'\x0b'.")))
(check-sat)
