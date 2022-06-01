(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.union (re.* (str.to_re "1")) (re.union (str.to_re "22") (str.to_re "333"))) (re.++ (re.+ (re.+ (str.to_re "444"))) (re.++ (re.* (re.union (str.to_re "555") (str.to_re "66"))) (re.++ (re.+ (re.* (str.to_re "7"))) (re.++ (re.+ (re.+ (str.to_re "8"))) (re.++ (re.union (re.* (str.to_re "99")) (re.* (str.to_re "a"))) (re.++ (re.+ (re.* (str.to_re "b"))) (re.++ (re.union (re.+ (str.to_re "ccc")) (re.union (str.to_re "dd") (str.to_re "ee"))) (re.union (re.+ (str.to_re "f")) (re.union (re.++ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar))) (re.++ (re.+ (re.* re.allchar)) (re.* re.allchar))) (str.to_re "hhh"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
