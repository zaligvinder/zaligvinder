(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= "XXll\\\\\\\\\\\\\\\\" (str.++ m n)))
(assert (str.in.re n (str.to.re (str.++ x y))))
(assert (> (str.len x) (str.len m)))
(assert (= 6 2))
(assert (= (str.len n) (str.len y)))
(check-sat)
