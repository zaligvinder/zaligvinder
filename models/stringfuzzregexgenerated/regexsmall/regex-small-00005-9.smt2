(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "000")) (re.+ (str.to.re "11"))) (re.++ (re.* (re.union (str.to.re "22") (str.to.re "333"))) (re.++ (re.* (re.union (str.to.re "444") (str.to.re "5"))) (re.++ (re.+ (re.union (str.to.re "66") (str.to.re "777"))) (re.union (re.* (str.to.re "88")) (re.+ (str.to.re "9")))))))))
(check-sat)