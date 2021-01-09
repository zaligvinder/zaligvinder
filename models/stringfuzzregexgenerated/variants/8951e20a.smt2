(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "111")) (re.+ (str.to.re "22"))) (re.++ (re.* (re.+ (str.to.re "333"))) (re.++ (re.+ (re.* (str.to.re "444"))) (re.++ (re.+ (re.+ (str.to.re "5"))) (re.++ (re.+ (re.+ (str.to.re "6"))) (re.++ (re.union (re.union (str.to.re "77") (str.to.re "88")) (re.* (str.to.re "9"))) (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "bb"))) (re.++ (re.+ (re.* (str.to.re "ccc"))) (re.++ (re.* (re.+ (str.to.re "d"))) (re.++ (re.* (str.to.re "ee")) (re.* (str.to.re "ee"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
