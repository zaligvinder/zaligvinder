(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "0h") (str.to.re "y*q")))))
(assert (= 12 (str.len x)))
(assert (not (= x "##PNVuZ")))
(check-sat)
