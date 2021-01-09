(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.+ (re.+ (str.to.re "111"))) (re.++ (re.union (re.+ (str.to.re "222")) (re.* (str.to.re "333"))) (re.++ (re.union (re.* (str.to.re "444")) (re.union (str.to.re "555") (str.to.re "6"))) (re.* (re.+ (str.to.re "777")))))))))
(check-sat)