(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "X"))))
(assert (= 0 (str.to.int x)))
(assert (not (= x ".4IX")))
(check-sat)
