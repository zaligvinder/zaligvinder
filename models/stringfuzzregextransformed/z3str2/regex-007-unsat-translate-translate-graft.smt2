(set-logic QF_S)
(declare-const x String)
(assert (= 8 (str.len x)))
(assert (str.in.re x (re.* (re.* (str.to.re "yoLX")))))
(assert (str.in.re x (str.to.re "L$X")))
(check-sat)
