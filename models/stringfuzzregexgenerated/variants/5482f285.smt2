(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "000") (str.to_re "111")) (re.+ (str.to_re "22"))) (re.++ (re.* (re.+ (str.to_re "333"))) (re.++ (re.+ (re.* (str.to_re "444"))) (re.++ (re.+ (re.+ (str.to_re "5"))) (re.++ (re.+ (re.+ (str.to_re "6"))) (re.++ (re.union (re.union (str.to_re "77") (str.to_re "88")) (re.* (str.to_re "9"))) (re.++ (re.+ (re.union (str.to_re "a") (str.to_re "bb"))) (re.++ (re.+ (re.* (str.to_re "ccc"))) (re.++ (re.* (re.+ (re.* (re.+ (re.++ (str.to_re "") (str.to_re "")))))) (re.* (re.* (str.to_re "ee"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
