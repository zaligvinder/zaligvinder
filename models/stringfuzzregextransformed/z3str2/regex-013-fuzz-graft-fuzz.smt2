(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re y (str.to.re "ab!P\\")))
(assert (= 2 (str.to.int y)))
(check-sat)
