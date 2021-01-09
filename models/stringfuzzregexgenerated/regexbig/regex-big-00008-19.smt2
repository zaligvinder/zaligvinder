(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "111"))) (re.++ (re.* (re.* (str.to.re "222"))) (re.++ (re.union (re.union (str.to.re "3") (str.to.re "4")) (re.union (str.to.re "55") (str.to.re "66"))) (re.++ (re.* (re.+ (str.to.re "777"))) (re.++ (re.* (re.* (str.to.re "888"))) (re.++ (re.union (re.union (str.to.re "9") (str.to.re "a")) (re.+ (str.to.re "b"))) (re.* (re.* (str.to.re "ccc"))))))))))))
(check-sat)