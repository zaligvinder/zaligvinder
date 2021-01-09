(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "000"))) (re.++ (re.* (re.+ (str.to.re "1"))) (re.++ (re.* (re.union (str.to.re "22") (str.to.re "33"))) (re.++ (re.* (re.* (str.to.re "4"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.* (re.+ (str.to.re "6"))) (re.++ (re.+ (re.* (str.to.re "7"))) (re.union (re.* (str.to.re "88")) (re.+ (str.to.re "9"))))))))))))
(check-sat)