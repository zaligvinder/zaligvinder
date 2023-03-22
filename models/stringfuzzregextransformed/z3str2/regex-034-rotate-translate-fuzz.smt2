(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ x y) (str.++ m n)))
(assert (str.in.re n (re.* (str.to.re "bY'"))))
(assert (> (str.to.int x) (str.len m)))
(assert (= 1 (str.to.int n)))
(assert (= 2 (str.len y)))
(check-sat)
