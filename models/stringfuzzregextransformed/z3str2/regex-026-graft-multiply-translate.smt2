(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "mm")) (str.to.re "cc")))))
(assert (str.in.re y (re.* (str.to.re "mm"))))
(assert (not (= x y)))
(assert (= (str.len x) (str.len y)))
(check-sat)
