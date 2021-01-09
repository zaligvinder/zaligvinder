(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.* (str.to.re "111"))) (re.++ (re.+ (re.union (str.to.re "222") (str.to.re "3"))) (re.++ (re.union (re.* (str.to.re "44")) (re.+ (str.to.re "55"))) (re.++ (re.* (re.* (str.to.re "66"))) (re.* (re.* (str.to.re "77")))))))))
(check-sat)