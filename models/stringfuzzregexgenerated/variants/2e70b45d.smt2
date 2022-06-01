(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "000")) (re.* (str.to_re "11"))) (re.++ (re.union (re.+ (str.to_re "222")) (re.union (str.to_re "33") (str.to_re "444"))) (re.++ (re.+ (re.* (str.to_re "55"))) (re.++ (re.+ (re.+ (str.to_re "66"))) (re.++ (re.union (re.union (str.to_re "77") (str.to_re "8")) (re.+ (str.to_re "99"))) (re.++ (re.* (re.union (str.to_re "aa") (str.to_re "b"))) (re.++ (re.union (re.* (str.to_re "c")) (re.* (str.to_re "ddd"))) (re.++ (re.+ (re.+ (str.to_re "eee"))) (re.++ (re.+ (re.* (str.to_re "f"))) (re.union (re.+ (str.to_re "gg")) (re.+ (re.++ (re.++ (re.+ re.allchar) (re.* re.allchar)) (re.++ (re.+ (re.* re.allchar)) (re.* re.allchar))))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
