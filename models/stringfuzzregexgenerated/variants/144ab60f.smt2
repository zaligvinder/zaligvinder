(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "00"))) (re.++ (re.union (re.* (str.to_re "11")) (re.union (str.to_re "222") (str.to_re "33"))) (re.++ (re.+ (re.union (str.to_re "4") (str.to_re "55"))) (re.++ (re.* (re.+ (str.to_re "6"))) (re.++ (re.+ (re.+ (str.to_re "77"))) (re.++ (re.union (re.* (str.to_re "88")) (re.union (str.to_re "99") (str.to_re "aaa"))) (re.++ (re.+ (re.union (str.to_re "b") (str.to_re "c"))) (re.++ (re.+ (re.* (str.to_re "dd"))) (re.++ (re.* (re.+ (str.to_re "ee"))) (re.* (re.* (re.* (re.* (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
