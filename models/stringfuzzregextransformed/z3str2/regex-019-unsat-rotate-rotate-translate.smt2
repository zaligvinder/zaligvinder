(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "v"))))
(assert (= 5 (str.len x)))
(assert (not (= x "vvvvv")))
(check-sat)
