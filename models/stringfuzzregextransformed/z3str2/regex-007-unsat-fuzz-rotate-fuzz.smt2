(set-logic QF_S)
(declare-const x String)
(assert (= (str.len x) 9))
(assert (str.in.re x (re.+ (str.to.re "sQ{d"))))
(assert (str.in.re x (re.+ (str.to.re "ah}R%M2{:"))))
(check-sat)
