(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "000"))) (re.++ (re.+ (re.* (str.to_re "11"))) (re.++ (re.union (re.+ (str.to_re "22")) (re.union (str.to_re "333") (str.to_re "44"))) (re.++ (re.+ (re.* (str.to_re "5"))) (re.++ (re.+ (re.* (str.to_re "666"))) (re.++ (re.* (re.union (str.to_re "777") (str.to_re "8"))) (re.++ (re.union (re.union (str.to_re "999") (str.to_re "a")) (re.* (str.to_re "b"))) (re.++ (re.union (re.+ (str.to_re "cc")) (re.* (str.to_re "ddd"))) (re.++ (re.* (re.* (str.to_re "e"))) (re.+ (re.* (str.to_re "f"))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)
