(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "r")))
(assert (= 4 (str.len x)))
(assert (not (= x "bNOA")))
(assert (not (= x "k`_a")))
(assert (not (= x "/a")))
(check-sat)
