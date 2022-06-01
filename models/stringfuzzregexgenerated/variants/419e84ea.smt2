(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.+ (str.to_re "11"))) (re.++ (re.* (re.* (str.to_re "222"))) (re.++ (re.+ (re.+ (str.to_re "333"))) (re.++ (re.+ (re.* (str.to_re "444"))) (re.++ (re.union (re.* (str.to_re "5")) (re.* (str.to_re "6"))) (re.++ (re.* (re.* (str.to_re "7"))) (re.++ (re.* (re.+ (str.to_re "88"))) (re.++ (re.+ (re.* (str.to_re "99"))) (re.++ (re.* (re.+ (str.to_re "aa"))) (re.union (re.union (str.to_re "bb") (str.to_re "cc")) (re.union (str.to_re "dd") (re.+ (re.* (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
