(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "[[")))
(assert (str.in.re y (re.* (re.++ (re.* (str.to.re "[[")) (str.to.re "dd")))))
(assert (= (str.len x) (str.len y)))
(assert (not (= x y)))
(assert (= 14 (str.len x)))
(check-sat)
