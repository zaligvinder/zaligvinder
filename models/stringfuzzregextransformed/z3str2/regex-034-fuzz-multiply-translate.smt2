(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ x y) (str.++ m n)))
(assert (str.in.re n (re.+ (str.to.re "ffssLLVV"))))
(assert (> (str.to.int x) (str.to.int m)))
(assert (= 4 (str.len n)))
(assert (= 4 (str.len y)))
(check-sat)
