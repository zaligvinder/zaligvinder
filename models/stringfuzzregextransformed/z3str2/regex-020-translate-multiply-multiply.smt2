(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "''''\\\\\\\\\\\\\\\\tttt''''")) (str.to.re "zzzz")))))
(assert (= (str.len x) 12))
(assert (not (= x "''''\\\\\\\\\\\\\\\\tttt''''zzzzzzzz")))
(assert (not (= x "zzzz''''\\\\\\\\\\\\\\\\tttt''''zzzz")))
(assert (not (= x "''''\\\\\\\\\\\\\\\\tttt''''''''\\\\\\\\\\\\\\\\tttt''''zzzz")))
(check-sat)
