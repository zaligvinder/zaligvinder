(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "0") (str.to_re "111"))) (re.++ (re.union (re.* (str.to_re "22")) (re.union (str.to_re "33") (str.to_re "4"))) (re.++ (re.* (re.+ (str.to_re "555"))) (re.++ (re.+ (re.* (str.to_re "6"))) (re.++ (re.* (re.* (str.to_re "77"))) (re.++ (re.* (re.union (str.to_re "88") (str.to_re "999"))) (re.++ (re.union (re.+ (str.to_re "a")) (re.union (str.to_re "bbb") (str.to_re "ccc"))) (re.++ (re.* (re.+ (str.to_re "ddd"))) (re.++ (re.* (re.* (str.to_re "e"))) (re.union (re.union (str.to_re "fff") (str.to_re "ggg")) (re.* (re.* (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
