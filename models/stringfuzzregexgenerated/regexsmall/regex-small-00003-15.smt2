(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "000")) (re.* (str.to.re "11"))) (re.++ (re.union (re.* (str.to.re "2")) (re.+ (str.to.re "33"))) (re.+ (re.union (str.to.re "444") (str.to.re "555")))))))
(check-sat)