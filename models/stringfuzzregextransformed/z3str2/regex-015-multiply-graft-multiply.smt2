(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.* (str.to.re "aaaabbbb11112222")))))
(assert (str.in.re y (re.* (str.to.re "aaaabbbb11112222"))))
(assert (= (str.len x) 16))
(assert (= 32 (str.len y)))
(check-sat)
