(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "bb"))))
(assert (= 6 (str.to.int x)))
(assert (not (= x "bbbb")))
(assert (not (= x "AA")))
(check-sat)
