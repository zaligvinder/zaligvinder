(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.* (re.union (str.to_re "2") (str.to_re "333"))) (re.++ (re.union (re.* (str.to_re "44")) (re.* (str.to_re "555"))) (re.++ (re.* (re.union (str.to_re "66") (str.to_re "777"))) (re.++ (re.union (re.* (str.to_re "88")) (re.+ (str.to_re "999"))) (re.++ (re.+ (re.+ (str.to_re "a"))) (re.++ (re.+ (re.* (str.to_re "bb"))) (re.++ (re.* (re.* (str.to_re "c"))) (re.++ (re.union (re.* (str.to_re "ddd")) (re.+ (str.to_re "ee"))) (re.* (re.* (str.to_re "f"))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)
