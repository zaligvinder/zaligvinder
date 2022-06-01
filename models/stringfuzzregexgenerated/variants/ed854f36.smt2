(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "0"))) (re.++ (re.+ (re.* (str.to_re "111"))) (re.++ (re.union (re.+ (str.to_re "222")) (re.+ (str.to_re "3"))) (re.++ (re.union (re.union (str.to_re "44") (str.to_re "55")) (re.* (str.to_re "666"))) (re.++ (re.union (re.union (str.to_re "7") (str.to_re "88")) (re.+ (str.to_re "999"))) (re.++ (re.union (re.+ (str.to_re "a")) (re.union (str.to_re "bb") (str.to_re "ccc"))) (re.++ (re.* (re.* (str.to_re "ddd"))) (re.++ (re.union (re.union (str.to_re "ee") (str.to_re "f")) (re.* (str.to_re "g"))) (re.++ (re.+ (re.* (str.to_re "hhh"))) (re.union (re.union (str.to_re "iii") (str.to_re "j")) (re.* (str.to_re "kkk"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
