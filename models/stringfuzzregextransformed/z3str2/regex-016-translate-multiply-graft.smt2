(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "112233")))
(assert (= (str.len x) 22))
(assert (not (= x "NNFF{{tt112233NNFF{{tt")))
(assert (not (= x "NNFF{{ttNNFF{{tt112233")))
(check-sat)
