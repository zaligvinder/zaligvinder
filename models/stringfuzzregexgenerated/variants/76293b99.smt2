(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.union (str.to_re "0") (str.to_re "1"))) (re.++ (re.* (re.union (str.to_re "2") (str.to_re "3"))) (re.++ (re.union (re.+ (str.to_re "4")) (re.* (str.to_re "55"))) (re.++ (re.+ (re.+ (str.to_re "666"))) (re.++ (re.+ (re.+ (str.to_re "7"))) (re.++ (re.+ (re.+ (str.to_re "8"))) (re.++ (re.* (re.* (str.to_re "99"))) (re.++ (re.* (re.* (str.to_re "aa"))) (re.++ (re.* (re.union (str.to_re "bb") (str.to_re "cc"))) (re.union (re.* (re.++ (re.+ (re.++ (str.to_re "") (str.to_re ""))) (re.++ (str.to_re "") (str.to_re "")))) (re.* (str.to_re "ee"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
