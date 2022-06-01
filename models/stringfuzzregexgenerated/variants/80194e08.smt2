(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.* (re.+ (str.to_re "111"))) (re.++ (re.+ (re.* (str.to_re "222"))) (re.++ (re.* (re.* (str.to_re "3"))) (re.++ (re.* (re.* (str.to_re "444"))) (re.++ (re.* (re.+ (str.to_re "555"))) (re.++ (re.union (re.* (str.to_re "66")) (re.+ (str.to_re "77"))) (re.++ (re.* (re.* (str.to_re "888"))) (re.++ (re.+ (re.* (str.to_re "9"))) (re.* (re.union (re.* (re.+ (str.to_re ""))) (str.to_re "bb"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
