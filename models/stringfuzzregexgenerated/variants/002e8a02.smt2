(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "00")) (re.+ (str.to.re "111"))) (re.++ (re.* (re.union (str.to.re "2") (str.to.re "333"))) (re.++ (re.* (re.* (str.to.re "444"))) (re.++ (re.+ (re.* (str.to.re "555"))) (re.++ (re.union (re.* (str.to.re "666")) (re.+ (str.to.re "77"))) (re.++ (re.union (re.+ (str.to.re "88")) (re.* (str.to.re "9"))) (re.++ (re.* (re.+ (str.to.re "a"))) (re.++ (re.union (re.* (str.to.re "b")) (re.+ (str.to.re "c"))) (re.++ (re.+ (re.+ (str.to.re "dd"))) (re.union (re.+ (str.to.re "ee")) (re.union (re.* (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar)))) (str.to.re "ggg"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
