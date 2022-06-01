(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "000"))) (re.++ (re.* (re.* (str.to_re "11"))) (re.++ (re.* (re.union (str.to_re "222") (str.to_re "33"))) (re.++ (re.+ (re.* (str.to_re "4"))) (re.++ (re.union (re.* (str.to_re "55")) (re.* (str.to_re "66"))) (re.++ (re.* (re.+ (str.to_re "7"))) (re.++ (re.* (re.union (str.to_re "8") (str.to_re "99"))) (re.++ (re.+ (re.union (str.to_re "aaa") (str.to_re "bb"))) (re.++ (re.+ (re.union (str.to_re "ccc") (str.to_re "ddd"))) (re.union (re.+ (str.to_re "ee")) (re.* (re.+ (re.* (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
