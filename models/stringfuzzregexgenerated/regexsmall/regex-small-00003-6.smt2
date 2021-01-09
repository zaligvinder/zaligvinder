(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.union (str.to.re "1") (str.to.re "222"))) (re.++ (re.* (re.+ (str.to.re "3"))) (re.* (re.* (str.to.re "44")))))))
(check-sat)