(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "_^x*bY\\V"))))
(assert (str.in.re y (re.* (str.to.re "$lt&1d"))))
(assert (= (str.len x) 5))
(check-sat)
