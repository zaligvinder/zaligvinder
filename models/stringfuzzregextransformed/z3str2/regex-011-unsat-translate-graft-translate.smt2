(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re """Gt'\r'")))
(assert (str.in.re y (re.* (str.to.re """Gt'\r'"))))
(assert (= 6 (str.len x)))
(check-sat)
