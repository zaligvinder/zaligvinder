(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.+ (str.to.re "1"))) (re.++ (re.* (re.+ (str.to.re "2"))) (re.++ (re.union (re.union (str.to.re "3") (str.to.re "4")) (re.union (str.to.re "55") (str.to.re "6"))) (re.++ (re.+ (re.+ (str.to.re "7"))) (re.union (re.* (str.to.re "88")) (re.* (str.to.re "9")))))))))
(check-sat)