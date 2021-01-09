(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.* (str.to.re "111"))) (re.++ (re.* (re.+ (str.to.re "2"))) (re.++ (re.+ (re.* (str.to.re "33"))) (re.++ (re.* (re.union (str.to.re "44") (str.to.re "55"))) (re.++ (re.* (re.union (str.to.re "6") (str.to.re "77"))) (re.++ (re.union (re.+ (str.to.re "88")) (re.+ (str.to.re "99"))) (re.++ (re.* (re.+ (str.to.re "a"))) (re.++ (re.union (re.+ (str.to.re "b")) (re.* (str.to.re "c"))) (re.++ (re.* (re.* (str.to.re "ddd"))) (re.* (re.* (re.+ (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
