(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "ac") (str.to.re ":")))))
(assert (= 8 (str.to.int x)))
(check-sat)
