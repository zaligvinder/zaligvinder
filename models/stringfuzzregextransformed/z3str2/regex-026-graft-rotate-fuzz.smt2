(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.* (str.to.re "")) (str.to.re "M")))))
(assert (str.in.re y (re.+ (str.to.re "l"))))
(assert (not (= x y)))
(assert (= (str.len x) (str.len y)))
(check-sat)
