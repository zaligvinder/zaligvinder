(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.++ (str.to.re "2_'n\\'") (str.to.re "`0kCdU0Ss")) (str.to.re "tjR2$y'#")))))
(assert (= 6 (str.to.int x)))
(check-sat)
