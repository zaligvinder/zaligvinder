(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "0"))) (re.++ (re.+ (re.* (str.to_re "11"))) (re.++ (re.* (re.+ (str.to_re "2"))) (re.++ (re.* (re.union (str.to_re "33") (str.to_re "44"))) (re.++ (re.* (re.+ (str.to_re "5"))) (re.++ (re.union (re.+ (str.to_re "6")) (re.+ (str.to_re "777"))) (re.++ (re.union (re.* (str.to_re "8")) (re.+ (str.to_re "9"))) (re.++ (re.+ (re.+ (str.to_re "a"))) (re.++ (re.+ (re.* (str.to_re "b"))) (re.* (re.+ (re.* (re.+ (re.++ (str.to_re "") re.allchar))))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
