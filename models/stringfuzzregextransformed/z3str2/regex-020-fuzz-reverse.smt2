(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "b") (re.* (str.to.re "L"))))))
(assert (= (str.to.int x) 6))
(assert (not (= x "bOav")))
(assert (not (= x "b")))
(assert (not (= x "I7_")))
(check-sat)
