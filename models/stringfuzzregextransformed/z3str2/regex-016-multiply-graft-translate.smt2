(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "__rr!!zz")))
(assert (= (str.len x) 22))
(assert (not (= x "__rr!!zz112233__rr!!zz")))
(assert (not (= x "__rr!!zz__rr!!zz112233")))
(check-sat)
