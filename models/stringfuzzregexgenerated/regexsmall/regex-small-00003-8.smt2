(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "1"))) (re.+ (re.+ (str.to.re "222")))))))
(check-sat)