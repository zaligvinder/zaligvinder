(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "||")) (str.to.re "GG")))))
(assert (str.in.re y (re.* (re.++ (re.* (str.to.re "||")) (str.to.re "GG")))))
(assert (not (= x y)))
(assert (= (str.len x) (str.len y)))
(check-sat)
