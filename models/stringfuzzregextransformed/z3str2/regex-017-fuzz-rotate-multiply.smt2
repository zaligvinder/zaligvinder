(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "$$!!PPbbccdd") (re.++ (str.to.re "hhAAhhww''{{") (str.to.re "AABB"))))))
(assert (= 2 (str.to.int x)))
(check-sat)
