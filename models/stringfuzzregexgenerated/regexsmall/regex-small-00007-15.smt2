(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.+ (re.union (str.to.re "11") (str.to.re "2"))) (re.++ (re.* (re.+ (str.to.re "333"))) (re.++ (re.+ (re.* (str.to.re "4"))) (re.++ (re.+ (re.* (str.to.re "5"))) (re.++ (re.+ (re.+ (str.to.re "66"))) (re.union (re.union (str.to.re "7") (str.to.re "88")) (re.* (str.to.re "999")))))))))))
(check-sat)