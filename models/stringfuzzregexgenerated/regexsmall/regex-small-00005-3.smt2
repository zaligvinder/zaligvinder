(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "111"))) (re.++ (re.* (re.* (str.to.re "22"))) (re.++ (re.+ (re.+ (str.to.re "333"))) (re.+ (re.union (str.to.re "44") (str.to.re "5")))))))))
(check-sat)