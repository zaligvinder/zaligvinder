(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ m n) "Xl\\\\\\\\"))
(assert (str.in.re n (str.to.re (str.++ x y))))
(assert (> (str.len x) (str.len m)))
(assert (= (str.len n) (str.len y)))
(assert (= 1 3))
(check-sat)
