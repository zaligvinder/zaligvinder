(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ x y) "Pb"))
(assert (str.in.re n (str.to.re (str.++ m n))))
(assert (> (str.len x) (str.len m)))
(assert (= 0 2))
(assert (= (str.to.int n) (str.to.int y)))
(check-sat)
