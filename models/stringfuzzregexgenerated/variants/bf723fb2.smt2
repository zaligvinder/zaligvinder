(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "000"))) (re.++ (re.* (re.union (str.to_re "11") (str.to_re "222"))) (re.++ (re.* (re.union (str.to_re "33") (str.to_re "444"))) (re.++ (re.+ (re.* (str.to_re "55"))) (re.++ (re.union (re.+ (str.to_re "666")) (re.+ (str.to_re "777"))) (re.++ (re.* (re.union (str.to_re "8") (str.to_re "99"))) (re.++ (re.union (re.+ (str.to_re "a")) (re.* (str.to_re "bbb"))) (re.++ (re.union (re.+ (str.to_re "cc")) (re.* (str.to_re "d"))) (re.++ (re.* (re.* (str.to_re "e"))) (re.* (re.++ (str.to_re "f") (str.to_re "ggg"))))))))))))))
(assert (<= 126 (str.len var0)))
(check-sat)
