(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.* (str.to.re "1"))) (re.++ (re.union (re.* (str.to.re "22")) (re.* (str.to.re "333"))) (re.++ (re.+ (re.+ (str.to.re "44"))) (re.++ (re.* (re.+ (str.to.re "55"))) (re.+ (re.union (str.to.re "6") (str.to.re "77")))))))))
(check-sat)