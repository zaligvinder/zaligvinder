(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "ZZrree##"))))
(assert (str.in.re y (re.* (str.to.re "ZZrree##"))))
(assert (= (str.len x) 12))
(check-sat)
