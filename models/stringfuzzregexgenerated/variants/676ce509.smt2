(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.union (re.+ (str.to.re "11")) (re.union (str.to.re "2") (str.to.re "3"))) (re.++ (re.+ (re.* (str.to.re "444"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "6"))) (re.++ (re.* (re.+ (str.to.re "7"))) (re.++ (re.union (re.* (str.to.re "88")) (re.+ (str.to.re "999"))) (re.++ (re.* (re.union (str.to.re "aa") (str.to.re "bb"))) (re.++ (re.* (re.+ (str.to.re "ccc"))) (re.++ (re.* (re.union (str.to.re "ddd") (str.to.re "eee"))) (re.* (re.+ (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
