(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= "cbE" (str.++ n m)))
(assert (str.in.re n (str.to.re (str.++ y x))))
(assert (> (str.len x) (str.len m)))
(assert (= (str.to.int y) (str.len n)))
(assert (= 0 3))
(check-sat)
