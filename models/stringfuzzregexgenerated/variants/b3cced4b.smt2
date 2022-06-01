(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.union (str.to_re "1") (str.to_re "222"))) (re.++ (re.union (re.+ (str.to_re "3")) (re.+ (str.to_re "44"))) (re.++ (re.* (re.* (str.to_re "55"))) (re.++ (re.+ (re.+ (str.to_re "6"))) (re.++ (re.+ (re.union (str.to_re "7") (str.to_re "888"))) (re.++ (re.+ (re.+ (str.to_re "99"))) (re.++ (re.union (re.+ (str.to_re "aa")) (re.* (str.to_re "bbb"))) (re.++ (re.union (re.+ (str.to_re "cc")) (re.+ (str.to_re "dd"))) (re.++ (re.* (re.+ (str.to_re "eee"))) (re.* (re.+ (str.to_re "ff"))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
