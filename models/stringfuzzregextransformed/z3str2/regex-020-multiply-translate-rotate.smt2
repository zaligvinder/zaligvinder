(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "ww")) (str.to.re "KK")))))
(assert (= (str.len x) 6))
(assert (not (= x "KKwwww")))
(assert (not (= x "wwKKww")))
(assert (not (= x "KKKKww")))
(check-sat)
