(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "bcab"))
(assert (str.in.re x (re.+ (re.* (str.to.re "/c")))))
(check-sat)
