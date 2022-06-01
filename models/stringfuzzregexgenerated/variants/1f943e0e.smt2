(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.* (str.to_re "111"))) (re.++ (re.* (re.+ (str.to_re "2"))) (re.++ (re.+ (re.* (str.to_re "33"))) (re.++ (re.* (re.union (str.to_re "44") (str.to_re "55"))) (re.++ (re.* (re.union (str.to_re "6") (str.to_re "77"))) (re.++ (re.union (re.+ (str.to_re "88")) (re.+ (str.to_re "99"))) (re.++ (re.* (re.+ (str.to_re "a"))) (re.++ (re.union (re.+ (str.to_re "b")) (re.* (str.to_re "c"))) (re.++ (re.* (re.* (str.to_re "ddd"))) (re.* (re.* (re.+ (re.* (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
