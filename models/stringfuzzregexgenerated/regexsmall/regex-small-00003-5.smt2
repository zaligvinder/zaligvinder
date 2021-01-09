(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.* (re.* (str.to.re "111"))) (re.union (re.union (str.to.re "222") (str.to.re "333")) (re.* (str.to.re "444")))))))
(check-sat)