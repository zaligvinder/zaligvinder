(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ x y) (str.++ m n)))
(assert (str.in.re n (re.+ (str.to.re "aadOLN'\x0c'7b\\"))))
(assert (> (str.to.int x) (str.len m)))
(assert (= 10 (str.to.int n)))
(assert (= 0 (str.len y)))
(check-sat)
