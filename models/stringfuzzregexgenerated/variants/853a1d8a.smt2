(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "00"))) (re.++ (re.+ (re.* (str.to_re "1"))) (re.++ (re.+ (re.+ (str.to_re "2"))) (re.++ (re.union (re.* (str.to_re "3")) (re.* (str.to_re "44"))) (re.++ (re.union (re.union (str.to_re "5") (str.to_re "666")) (re.* (str.to_re "77"))) (re.++ (re.+ (re.union (str.to_re "88") (str.to_re "999"))) (re.++ (re.+ (re.union (str.to_re "a") (str.to_re "bb"))) (re.++ (re.+ (re.* (str.to_re "c"))) (re.++ (re.union (re.+ (str.to_re "d")) (re.union (str.to_re "e") (str.to_re "fff"))) (re.++ (re.* (str.to_re "gg")) (re.* (str.to_re "gg"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
