(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re y (re.+ (re.+ (str.to.re "!!VV'\r''\r'}}NN@@")))))
(assert (= (str.len y) 12))
(check-sat)
