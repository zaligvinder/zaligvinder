(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "00")) (re.+ (str.to_re "1"))) (re.++ (re.* (re.+ (str.to_re "222"))) (re.++ (re.* (re.* (str.to_re "333"))) (re.++ (re.union (re.union (str.to_re "44") (str.to_re "5")) (re.+ (str.to_re "66"))) (re.++ (re.* (re.* (str.to_re "777"))) (re.++ (re.union (re.union (str.to_re "8") (str.to_re "9")) (re.* (str.to_re "aa"))) (re.++ (re.union (re.* (str.to_re "bb")) (re.+ (str.to_re "ccc"))) (re.++ (re.* (re.+ (str.to_re "d"))) (re.++ (re.* (re.+ (str.to_re "eee"))) (re.* (re.union (str.to_re "f") (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
