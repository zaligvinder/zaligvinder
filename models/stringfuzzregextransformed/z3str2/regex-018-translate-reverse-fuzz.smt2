(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "mZ") (str.to.re "")))))
(assert (= 6 (str.len x)))
(assert (not (= x "XA{GAa'uT9")))
(check-sat)
