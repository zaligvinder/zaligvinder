(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "a>ZdJc#`|!Q")))
(assert (str.in.re x (str.to.re "ad")))
(assert (> 31 15))
(assert (< (str.to.int x) (str.len x)))
(check-sat)
