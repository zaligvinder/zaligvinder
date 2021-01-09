(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "0") (str.to.re "111"))) (re.++ (re.* (re.+ (str.to.re "222"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "444"))) (re.++ (re.+ (re.+ (str.to.re "5"))) (re.union (re.* (str.to.re "6")) (re.+ (str.to.re "777")))))))))
(check-sat)