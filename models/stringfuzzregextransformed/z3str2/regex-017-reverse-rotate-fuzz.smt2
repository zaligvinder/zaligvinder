(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "dc") (re.union (str.to.re "%r2:") (str.to.re "BA"))))))
(assert (= 1 (str.to.int x)))
(check-sat)
