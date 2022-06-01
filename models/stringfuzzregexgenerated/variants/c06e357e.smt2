(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.* (re.+ (str.to_re "111"))) (re.++ (re.* (re.+ (str.to_re "22"))) (re.++ (re.* (re.+ (str.to_re "3"))) (re.++ (re.+ (re.* (str.to_re "444"))) (re.++ (re.+ (re.+ (str.to_re "555"))) (re.++ (re.+ (re.union (str.to_re "666") (str.to_re "7"))) (re.++ (re.* (re.* (str.to_re "888"))) (re.++ (re.union (re.+ (str.to_re "9")) (re.union (str.to_re "aaa") (str.to_re "bb"))) (re.union (re.* (str.to_re "c")) (re.* (str.to_re "ddd"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
