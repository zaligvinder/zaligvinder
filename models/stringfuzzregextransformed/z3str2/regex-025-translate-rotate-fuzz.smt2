(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.* (str.to.re "")) (str.to.re "")))))
(assert (str.in.re y (re.* (re.++ (re.* (str.to.re "1")) (str.to.re "%")))))
(assert (= (str.to.int x) (str.to.int y)))
(assert (not (= x y)))
(assert (= (str.to.int x) 10))
(check-sat)
