(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "V") (re.* (str.to.re "w")))))
(assert (str.in.re x (re.++ (str.to.re "t") (re.++ (re.* (str.to.re "V")) (str.to.re "w")))))
(assert (= (str.len x) 3))
(check-sat)
