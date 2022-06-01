(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.union (str.to_re "000") (str.to_re "1"))) (re.++ (re.union (re.+ (str.to_re "22")) (re.+ (str.to_re "333"))) (re.++ (re.* (re.* (str.to_re "444"))) (re.++ (re.* (re.* (str.to_re "555"))) (re.++ (re.union (re.+ (str.to_re "66")) (re.* (str.to_re "7"))) (re.++ (re.* (re.+ (str.to_re "8"))) (re.++ (re.union (re.+ (str.to_re "99")) (re.* (str.to_re "a"))) (re.++ (re.+ (re.+ (str.to_re "bb"))) (re.++ (re.* (re.+ (str.to_re "c"))) (re.union (re.union (str.to_re "ddd") (re.* (re.* (re.+ re.allchar)))) (re.* (str.to_re "ff"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
