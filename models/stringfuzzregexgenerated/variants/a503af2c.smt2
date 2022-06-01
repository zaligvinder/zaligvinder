(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "000"))) (re.++ (re.* (re.* (str.to_re "1"))) (re.++ (re.+ (re.union (str.to_re "222") (str.to_re "33"))) (re.++ (re.+ (re.+ (str.to_re "4"))) (re.++ (re.+ (re.+ (str.to_re "55"))) (re.++ (re.+ (re.union (str.to_re "6") (str.to_re "777"))) (re.++ (re.* (re.union (str.to_re "8") (str.to_re "9"))) (re.++ (re.union (re.union (str.to_re "aaa") (str.to_re "bb")) (re.+ (str.to_re "ccc"))) (re.++ (re.* (re.+ (str.to_re "ddd"))) (re.+ (re.+ (str.to_re "eee"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
