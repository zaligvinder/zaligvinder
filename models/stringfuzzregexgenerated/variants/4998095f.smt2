(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.* (re.union (str.to_re "111") (str.to_re "222"))) (re.++ (re.union (re.union (str.to_re "3") (str.to_re "4")) (re.+ (str.to_re "55"))) (re.++ (re.+ (re.+ (str.to_re "666"))) (re.++ (re.+ (re.* (str.to_re "7"))) (re.++ (re.* (re.* (str.to_re "8"))) (re.++ (re.+ (re.* (str.to_re "9"))) (re.++ (re.union (re.* (str.to_re "aaa")) (re.* (str.to_re "bb"))) (re.++ (re.union (re.+ (str.to_re "cc")) (re.* (str.to_re "d"))) (re.union (re.union (str.to_re "ee") (str.to_re "ff")) (re.* (re.* (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
