(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "P") (str.to.re "i")))))
(assert (= 2 (str.len x)))
(check-sat)
