(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re """w") (str.to.re "123")))))
(assert (= 5 (str.len x)))
(assert (not (= x "123""w")))
(check-sat)
