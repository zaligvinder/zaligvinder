(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "a"))))
(assert (= 4 (str.len x)))
(assert (not (= x "b~a")))
(assert (not (= x "bDV'\t'")))
(assert (not (= x "b5b")))
(check-sat)
