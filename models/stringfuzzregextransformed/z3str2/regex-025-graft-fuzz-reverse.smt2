(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "") (re.+ (str.to.re ""))))))
(assert (str.in.re y (re.+ (str.to.re ""))))
(assert (= (str.len x) (str.to.int y)))
(assert (not (= x y)))
(assert (= 5 (str.len x)))
(check-sat)
