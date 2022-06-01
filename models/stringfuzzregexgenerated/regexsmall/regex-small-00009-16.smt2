(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.+ (str.to_re "111"))) (re.++ (re.* (re.* (str.to_re "222"))) (re.++ (re.union (re.union (str.to_re "33") (str.to_re "4")) (re.* (str.to_re "55"))) (re.++ (re.union (re.+ (str.to_re "6")) (re.+ (str.to_re "777"))) (re.++ (re.+ (re.+ (str.to_re "8"))) (re.++ (re.+ (re.+ (str.to_re "9"))) (re.++ (re.* (re.+ (str.to_re "a"))) (re.++ (re.+ (re.+ (str.to_re "bbb"))) (re.+ (re.* (str.to_re "ccc")))))))))))))
(check-sat)