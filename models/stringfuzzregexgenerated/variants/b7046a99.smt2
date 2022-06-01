(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.+ (re.union (str.to_re "11") (str.to_re "2"))) (re.++ (re.* (re.union (str.to_re "33") (str.to_re "4"))) (re.++ (re.* (re.+ (str.to_re "5"))) (re.++ (re.+ (re.union (str.to_re "66") (str.to_re "777"))) (re.++ (re.union (re.+ (str.to_re "88")) (re.+ (str.to_re "99"))) (re.++ (re.* (re.+ (str.to_re "aa"))) (re.++ (re.+ (re.* (str.to_re "bbb"))) (re.++ (re.* (re.union (str.to_re "ccc") (str.to_re "dd"))) (re.union (re.* (str.to_re "eee")) (re.* (re.* (re.* (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
