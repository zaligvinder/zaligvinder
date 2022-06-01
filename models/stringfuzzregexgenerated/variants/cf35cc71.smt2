(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.union (str.to_re "0") (str.to_re "11"))) (re.++ (re.+ (re.union (str.to_re "2") (str.to_re "33"))) (re.++ (re.* (re.union (str.to_re "44") (str.to_re "55"))) (re.++ (re.union (re.+ (str.to_re "6")) (re.+ (str.to_re "77"))) (re.++ (re.* (re.union (str.to_re "8") (str.to_re "999"))) (re.++ (re.+ (re.+ (str.to_re "aaa"))) (re.++ (re.+ (re.union (str.to_re "b") (str.to_re "cc"))) (re.++ (re.* (re.+ (str.to_re "d"))) (re.++ (re.* (re.union (str.to_re "ee") (str.to_re "f"))) (re.union (re.union (str.to_re "ggg") (str.to_re "h")) (re.* (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
