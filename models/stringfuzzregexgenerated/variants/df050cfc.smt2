(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "000"))) (re.++ (re.* (re.* (str.to_re "1"))) (re.++ (re.union (re.union (str.to_re "22") (str.to_re "3")) (re.+ (str.to_re "444"))) (re.++ (re.* (re.* (str.to_re "5"))) (re.++ (re.* (re.+ (str.to_re "66"))) (re.++ (re.union (re.+ (str.to_re "777")) (re.* (str.to_re "88"))) (re.++ (re.* (re.* (str.to_re "99"))) (re.++ (re.union (re.+ (str.to_re "a")) (re.* (str.to_re "bb"))) (re.++ (re.* (re.+ (str.to_re "ccc"))) (re.++ (re.* (str.to_re "ddd")) (re.* (str.to_re "ddd"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
