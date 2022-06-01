(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "000"))) (re.++ (re.union (re.* (str.to_re "1")) (re.+ (str.to_re "2"))) (re.++ (re.+ (re.+ (str.to_re "3"))) (re.++ (re.union (re.+ (str.to_re "444")) (re.union (str.to_re "55") (str.to_re "6"))) (re.++ (re.* (re.* (str.to_re "77"))) (re.++ (re.* (re.+ (str.to_re "8"))) (re.++ (re.+ (re.union (str.to_re "9") (str.to_re "a"))) (re.++ (re.+ (re.+ (str.to_re "bbb"))) (re.++ (re.union (re.union (str.to_re "c") (str.to_re "d")) (re.+ (str.to_re "eee"))) (re.+ (re.* (str.to_re "ggg"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
