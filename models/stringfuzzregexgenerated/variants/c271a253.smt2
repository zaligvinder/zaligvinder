(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "000")) (re.* (str.to_re "1"))) (re.++ (re.* (re.+ (str.to_re "222"))) (re.++ (re.+ (re.* (str.to_re "333"))) (re.++ (re.union (re.+ (str.to_re "4")) (re.union (str.to_re "5") (str.to_re "66"))) (re.++ (re.* (re.* (str.to_re "777"))) (re.++ (re.+ (re.union (str.to_re "888") (str.to_re "999"))) (re.++ (re.* (re.+ (str.to_re "a"))) (re.++ (re.+ (re.* (str.to_re "bbb"))) (re.++ (re.union (re.+ (str.to_re "c")) (re.* (str.to_re "d"))) (re.* (re.* (re.* (re.* (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
