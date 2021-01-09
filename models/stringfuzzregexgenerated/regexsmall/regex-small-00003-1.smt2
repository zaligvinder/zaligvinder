(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "0") (str.to.re "111"))) (re.++ (re.* (re.* (str.to.re "22"))) (re.* (re.* (str.to.re "333")))))))
(check-sat)