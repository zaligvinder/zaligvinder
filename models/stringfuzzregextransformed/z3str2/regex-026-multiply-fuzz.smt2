(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.+ (str.to.re "q3")) (str.to.re "b")))))
(assert (str.in.re y (re.+ (re.union (re.* (str.to.re "ae")) (str.to.re "`")))))
(assert (not (= x y)))
(assert (= (str.len x) (str.to.int y)))
(check-sat)
