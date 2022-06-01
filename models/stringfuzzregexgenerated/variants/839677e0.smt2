(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "00"))) (re.++ (re.* (re.+ (str.to_re "1"))) (re.++ (re.union (re.+ (str.to_re "22")) (re.* (str.to_re "333"))) (re.++ (re.+ (re.union (str.to_re "44") (str.to_re "55"))) (re.++ (re.* (re.union (str.to_re "666") (str.to_re "77"))) (re.++ (re.+ (re.+ (str.to_re "8"))) (re.++ (re.union (re.union (str.to_re "9") (str.to_re "a")) (re.+ (str.to_re "b"))) (re.++ (re.union (re.* (str.to_re "c")) (re.* (str.to_re "ddd"))) (re.++ (re.* (re.* (str.to_re "eee"))) (re.* (re.+ (str.to_re "ff"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
