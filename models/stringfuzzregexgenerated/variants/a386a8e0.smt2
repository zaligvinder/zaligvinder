(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "0")) (re.+ (str.to_re "1"))) (re.++ (re.union (re.union (str.to_re "222") (str.to_re "3")) (re.* (str.to_re "44"))) (re.++ (re.* (re.* (str.to_re "55"))) (re.++ (re.* (re.+ (str.to_re "666"))) (re.++ (re.+ (re.* (str.to_re "7"))) (re.++ (re.* (re.+ (str.to_re "8"))) (re.++ (re.union (re.+ (str.to_re "999")) (re.union (str.to_re "aa") (str.to_re "bb"))) (re.++ (re.* (re.union (str.to_re "c") (str.to_re "d"))) (re.++ (re.* (re.union (str.to_re "e") (str.to_re "ff"))) (re.* (re.union (str.to_re "gg") (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 126 (str.len var0)))
(check-sat)
