(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "}d") (str.to.re "^'\r'")))))
(assert (= 3 (str.len x)))
(check-sat)
