(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "Q#?r}X") (re.++ (str.to.re "-^-Zy""") (str.to.re "^<"))))))
(assert (= 1 (str.to.int x)))
(check-sat)
