(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "EE")) (str.to.re "KK")))))
(assert (= (str.len x) 4))
(assert (not (= x "KKKK")))
(assert (not (= x "EEKK")))
(check-sat)
