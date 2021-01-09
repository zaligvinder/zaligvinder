(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "1"))) (re.++ (re.* (re.* (str.to.re "22"))) (re.++ (re.* (re.+ (str.to.re "3"))) (re.++ (re.* (re.union (str.to.re "44") (str.to.re "55"))) (re.++ (re.+ (re.* (str.to.re "666"))) (re.++ (re.+ (re.+ (str.to.re "77"))) (re.++ (re.union (re.+ (str.to.re "88")) (re.* (str.to.re "9"))) (re.++ (re.* (re.union (str.to.re "aaa") (str.to.re "bb"))) (re.++ (re.* (re.* (str.to.re "c"))) (re.* (re.* (str.to.re "dd")))))))))))))))
(check-sat)