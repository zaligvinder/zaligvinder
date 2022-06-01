(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.+ (str.to_re "11"))) (re.++ (re.* (re.union (str.to_re "22") (str.to_re "3"))) (re.++ (re.* (re.* (str.to_re "44"))) (re.++ (re.+ (re.+ (str.to_re "5"))) (re.++ (re.* (re.+ (str.to_re "6"))) (re.++ (re.+ (re.+ (str.to_re "7"))) (re.++ (re.* (re.* (str.to_re "88"))) (re.++ (re.+ (re.* (str.to_re "99"))) (re.++ (re.union (re.* (str.to_re "a")) (re.* (str.to_re "bbb"))) (re.* (re.union (re.* (re.* (re.++ (re.++ (str.to_re "") (str.to_re "")) (re.++ (str.to_re "") (str.to_re ""))))) (str.to_re "d"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
