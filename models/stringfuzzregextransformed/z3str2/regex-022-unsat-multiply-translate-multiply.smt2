(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "wwww")) (str.to.re "DDDD")))))
(assert (= (str.len x) 8))
(assert (not (= x "DDDDDDDD")))
(assert (not (= x "wwwwDDDD")))
(check-sat)
