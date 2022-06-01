(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "000"))) (re.++ (re.+ (re.* (str.to_re "1"))) (re.++ (re.+ (re.* (str.to_re "222"))) (re.++ (re.* (re.* (str.to_re "3"))) (re.++ (re.+ (re.* (str.to_re "44"))) (re.++ (re.union (re.* (str.to_re "5")) (re.* (str.to_re "6"))) (re.++ (re.+ (re.union (str.to_re "77") (str.to_re "8"))) (re.++ (re.+ (re.union (str.to_re "999") (str.to_re "a"))) (re.++ (re.+ (re.* (str.to_re "bbb"))) (re.union (re.+ (str.to_re "cc")) (re.+ (str.to_re "dd"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
