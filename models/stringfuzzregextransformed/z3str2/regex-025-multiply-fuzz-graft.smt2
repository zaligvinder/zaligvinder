(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (re.* (str.to.re "P")) (str.to.re "UTb")))))
(assert (str.in.re y (re.+ (re.union (str.to.re "") (re.+ (str.to.re "aa"))))))
(assert (= (str.len x) (str.to.int y)))
(assert (not (= x y)))
(assert (= 6 (str.len x)))
(check-sat)
