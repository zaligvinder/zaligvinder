(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.union (re.* (str.to.re "11")) (re.union (str.to.re "222") (str.to.re "33"))) (re.++ (re.+ (re.union (str.to.re "4") (str.to.re "55"))) (re.++ (re.* (re.+ (str.to.re "6"))) (re.++ (re.+ (re.+ (str.to.re "77"))) (re.++ (re.union (re.* (str.to.re "88")) (re.union (str.to.re "99") (str.to.re "aaa"))) (re.++ (re.+ (re.union (str.to.re "b") (str.to.re "c"))) (re.++ (re.+ (re.* (str.to.re "dd"))) (re.++ (re.* (re.+ (str.to.re "ee"))) (re.* (re.* (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
