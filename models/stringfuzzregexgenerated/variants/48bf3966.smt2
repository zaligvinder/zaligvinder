(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "0"))) (re.++ (re.+ (re.+ (str.to_re "111"))) (re.++ (re.+ (re.union (str.to_re "222") (str.to_re "333"))) (re.++ (re.+ (re.+ (str.to_re "4"))) (re.++ (re.* (re.* (str.to_re "55"))) (re.++ (re.union (re.+ (str.to_re "66")) (re.union (str.to_re "7") (str.to_re "8"))) (re.++ (re.union (re.* (str.to_re "99")) (re.* (str.to_re "a"))) (re.++ (re.union (re.* (str.to_re "bbb")) (re.union (str.to_re "ccc") (str.to_re "ddd"))) (re.++ (re.+ (re.* (str.to_re "e"))) (re.* (re.++ (str.to_re "fff") (str.to_re "ggg"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
