(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "00"))) (re.++ (re.union (re.* (str.to_re "11")) (re.union (str.to_re "2") (str.to_re "333"))) (re.++ (re.* (re.+ (str.to_re "4"))) (re.++ (re.* (re.* (str.to_re "55"))) (re.++ (re.union (re.union (str.to_re "6") (str.to_re "777")) (re.+ (str.to_re "8"))) (re.++ (re.+ (re.* (str.to_re "9"))) (re.++ (re.* (re.+ (str.to_re "a"))) (re.++ (re.+ (re.+ (str.to_re "bb"))) (re.++ (re.union (re.+ (str.to_re "ccc")) (re.* (str.to_re "d"))) (re.+ (re.* (re.* (re.* (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)
