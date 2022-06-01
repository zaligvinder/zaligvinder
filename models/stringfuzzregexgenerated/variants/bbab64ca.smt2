(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "0"))) (re.++ (re.+ (re.* (str.to_re "11"))) (re.++ (re.+ (re.* (str.to_re "2"))) (re.++ (re.union (re.* (str.to_re "333")) (re.+ (str.to_re "444"))) (re.++ (re.+ (re.union (str.to_re "555") (str.to_re "6"))) (re.++ (re.* (re.* (str.to_re "7"))) (re.++ (re.union (re.+ (str.to_re "8")) (re.union (str.to_re "9") (str.to_re "aaa"))) (re.++ (re.+ (re.union (str.to_re "bbb") (str.to_re "ccc"))) (re.++ (re.+ (re.union (str.to_re "dd") (str.to_re "ee"))) (re.union (re.* (re.++ (re.* (re.+ re.allchar)) (re.* (re.* re.allchar)))) (re.* (str.to_re "ggg"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
