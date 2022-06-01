(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "0")) (re.* (str.to_re "11"))) (re.++ (re.* (re.union (str.to_re "2") (str.to_re "33"))) (re.++ (re.* (re.union (str.to_re "4") (str.to_re "55"))) (re.++ (re.* (re.* (str.to_re "666"))) (re.++ (re.union (re.union (str.to_re "7") (str.to_re "8")) (re.union (str.to_re "9") (str.to_re "aaa"))) (re.++ (re.+ (re.* (str.to_re "bb"))) (re.++ (re.union (re.* (str.to_re "c")) (re.union (str.to_re "ddd") (str.to_re "eee"))) (re.++ (re.* (re.* (str.to_re "f"))) (re.++ (re.+ (re.+ (str.to_re "g"))) (re.+ (re.+ (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
