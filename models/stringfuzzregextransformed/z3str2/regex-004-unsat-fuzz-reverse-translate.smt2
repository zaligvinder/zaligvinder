(set-logic QF_S)
(declare-const x String)
(assert (= x "/v/D>*QZ"))
(assert (str.in.re x (re.union (re.* (str.to.re "9`vTx?}z")) (re.+ (str.to.re "/v")))))
(check-sat)
