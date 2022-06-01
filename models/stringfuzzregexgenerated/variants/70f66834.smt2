(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "000"))) (re.++ (re.* (re.+ (str.to_re "111"))) (re.++ (re.+ (re.* (str.to_re "2"))) (re.++ (re.union (re.+ (str.to_re "3")) (re.union (str.to_re "444") (str.to_re "555"))) (re.++ (re.union (re.union (str.to_re "66") (str.to_re "777")) (re.* (str.to_re "88"))) (re.++ (re.* (re.* (str.to_re "9"))) (re.++ (re.+ (re.* (str.to_re "aaa"))) (re.++ (re.* (re.+ (str.to_re "bb"))) (re.* (re.* (re.* (str.to_re "c"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
