(set-logic QF_S)
(declare-const x String)
(assert (= x "a}pUs`'\x0b'::/Bmh' '"))
(assert (str.in.re x (str.to.re "' 'Ve")))
(check-sat)
