(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "}XJ"))))
(assert (str.in.re y (re.+ (str.to.re "]cP,hp~?&:3|wB_"))))
(assert (= (str.len x) 4))
(check-sat)
