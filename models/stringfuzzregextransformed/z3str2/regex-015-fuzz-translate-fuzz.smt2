(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "@*]5{c+Hm8/"))))
(assert (str.in.re y (re.+ (re.+ (str.to.re "1")))))
(assert (= (str.to.int x) 0))
(assert (= (str.to.int y) 1))
(check-sat)
