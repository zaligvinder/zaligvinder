(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (str.to.re "a")))
(assert (= (str.to.int x) 0))
(assert (not (= x "n:b")))
(assert (not (= x "aba")))
(assert (not (= x "a")))
(assert (not (= x "b")))
(assert (not (= x "gfa")))
(assert (not (= x "b")))
(assert (not (= x "aa&")))
(check-sat)
