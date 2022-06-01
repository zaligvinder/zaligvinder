(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "0")) (re.+ (str.to_re "11"))) (re.++ (re.union (re.* (str.to_re "22")) (re.+ (str.to_re "33"))) (re.++ (re.union (re.union (str.to_re "4") (str.to_re "555")) (re.* (str.to_re "66"))) (re.++ (re.+ (re.* (str.to_re "777"))) (re.++ (re.+ (re.+ (str.to_re "88"))) (re.++ (re.+ (re.union (str.to_re "99") (str.to_re "a"))) (re.++ (re.* (re.* (str.to_re "b"))) (re.++ (re.union (re.* (str.to_re "cc")) (re.+ (str.to_re "d"))) (re.++ (re.* (re.+ (str.to_re "e"))) (re.+ (re.union (str.to_re "fff") (re.+ (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 176 (str.len var0)))
(check-sat)
