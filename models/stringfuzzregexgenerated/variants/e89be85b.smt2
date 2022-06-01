(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.* (str.to_re "11"))) (re.++ (re.* (re.+ (str.to_re "222"))) (re.++ (re.union (re.* (str.to_re "3")) (re.* (str.to_re "4"))) (re.++ (re.union (re.union (str.to_re "55") (str.to_re "666")) (re.* (str.to_re "777"))) (re.++ (re.+ (re.union (str.to_re "888") (str.to_re "99"))) (re.++ (re.* (re.+ (str.to_re "aaa"))) (re.++ (re.union (re.+ (str.to_re "bb")) (re.union (str.to_re "ccc") (str.to_re "ddd"))) (re.++ (re.* (re.* (str.to_re "eee"))) (re.++ (re.* (re.+ (str.to_re "f"))) (re.union (re.union (str.to_re "gg") (str.to_re "h")) (re.* (str.to_re "ii"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
