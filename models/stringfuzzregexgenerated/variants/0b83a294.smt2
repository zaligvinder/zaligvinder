(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.+ (re.union (str.to_re "2") (str.to_re "3"))) (re.++ (re.+ (re.+ (str.to_re "44"))) (re.++ (re.* (re.* (str.to_re "55"))) (re.++ (re.union (re.* (str.to_re "66")) (re.* (str.to_re "77"))) (re.++ (re.union (re.union (str.to_re "888") (str.to_re "999")) (re.* (str.to_re "a"))) (re.++ (re.+ (re.+ (str.to_re "bbb"))) (re.++ (re.union (re.union (str.to_re "c") (str.to_re "ddd")) (re.* (str.to_re "ee"))) (re.++ (re.union (re.union (str.to_re "f") (str.to_re "g")) (re.union (str.to_re "hh") (str.to_re "iii"))) (re.+ (re.+ (str.to_re "j"))))))))))))))
(assert (<= 176 (str.len var0)))
(check-sat)
