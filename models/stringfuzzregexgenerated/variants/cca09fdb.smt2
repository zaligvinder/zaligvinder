(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.union (str.to_re "000") (str.to_re "111"))) (re.++ (re.+ (re.+ (str.to_re "222"))) (re.++ (re.+ (re.union (str.to_re "33") (str.to_re "4"))) (re.++ (re.union (re.union (str.to_re "5") (str.to_re "6")) (re.+ (str.to_re "7"))) (re.++ (re.* (re.+ (str.to_re "8"))) (re.++ (re.* (re.union (str.to_re "999") (str.to_re "a"))) (re.++ (re.union (re.+ (str.to_re "bbb")) (re.union (str.to_re "cc") (str.to_re "ddd"))) (re.++ (re.+ (re.+ (str.to_re "ee"))) (re.++ (re.+ (re.* (str.to_re "f"))) (re.+ (re.* (str.to_re "g"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
