(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.* (re.union (str.to.re "2") (str.to.re "333"))) (re.++ (re.union (re.* (str.to.re "44")) (re.* (str.to.re "555"))) (re.++ (re.* (re.union (str.to.re "66") (str.to.re "777"))) (re.++ (re.union (re.* (str.to.re "88")) (re.+ (str.to.re "999"))) (re.++ (re.+ (re.+ (str.to.re "a"))) (re.++ (re.+ (re.* (str.to.re "bb"))) (re.++ (re.* (re.* (str.to.re "c"))) (re.++ (re.union (re.* (str.to.re "ddd")) (re.+ (str.to.re "ee"))) (re.* (re.+ (str.to.re "f"))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)
