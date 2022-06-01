(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.union (str.to_re "0") (str.to_re "11"))) (re.++ (re.* (re.union (str.to_re "22") (str.to_re "333"))) (re.++ (re.union (re.union (str.to_re "44") (str.to_re "55")) (re.* (str.to_re "666"))) (re.++ (re.+ (re.+ (str.to_re "777"))) (re.++ (re.union (re.+ (str.to_re "888")) (re.union (str.to_re "9") (str.to_re "a"))) (re.++ (re.* (re.+ (str.to_re "b"))) (re.++ (re.union (re.* (str.to_re "ccc")) (re.* (str.to_re "d"))) (re.++ (re.union (re.* (str.to_re "eee")) (re.+ (str.to_re "f"))) (re.++ (re.* (re.* (str.to_re "gg"))) (re.union (re.+ (str.to_re "hh")) (re.+ (str.to_re "iii"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
