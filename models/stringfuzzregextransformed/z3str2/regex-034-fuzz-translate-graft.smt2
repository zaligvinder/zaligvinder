(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ x y) "`'' ''NcN/"))
(assert (str.in.re n (str.to.re (str.++ m n))))
(assert (> (str.to.int x) (str.to.int m)))
(assert (= 1 (str.len n)))
(assert (= (str.to.int y) 0))
(check-sat)
