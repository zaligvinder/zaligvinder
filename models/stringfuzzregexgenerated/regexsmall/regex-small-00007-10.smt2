(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "0"))) (re.++ (re.* (re.union (str.to.re "111") (str.to.re "22"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "4")) (re.* (str.to.re "55"))) (re.++ (re.+ (re.* (str.to.re "6"))) (re.++ (re.+ (re.+ (str.to.re "77"))) (re.++ (re.union (re.+ (str.to.re "88")) (re.* (str.to.re "9"))) (re.union (re.* (str.to.re "aa")) (re.* (str.to.re "bbb")))))))))))
(check-sat)