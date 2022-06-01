(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "0")) (re.* (str.to_re "11"))) (re.++ (re.+ (re.+ (str.to_re "2"))) (re.++ (re.+ (re.union (str.to_re "333") (str.to_re "44"))) (re.++ (re.union (re.union (str.to_re "5") (str.to_re "66")) (re.union (str.to_re "777") (str.to_re "8"))) (re.++ (re.+ (re.+ (str.to_re "99"))) (re.++ (re.union (re.+ (str.to_re "a")) (re.* (str.to_re "bb"))) (re.++ (re.* (re.union (str.to_re "ccc") (str.to_re "ddd"))) (re.++ (re.* (re.union (str.to_re "eee") (str.to_re "f"))) (re.++ (re.+ (re.+ (str.to_re "gg"))) (re.union (re.union (str.to_re "h") (str.to_re "iii")) (re.++ (str.to_re "jj") (str.to_re "kk"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
