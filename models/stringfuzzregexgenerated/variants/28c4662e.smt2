(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "00"))) (re.++ (re.union (re.union (str.to_re "1") (str.to_re "2")) (re.+ (str.to_re "33"))) (re.++ (re.* (re.union (str.to_re "4") (str.to_re "555"))) (re.++ (re.union (re.+ (str.to_re "666")) (re.union (str.to_re "77") (str.to_re "88"))) (re.++ (re.* (re.* (str.to_re "99"))) (re.++ (re.* (re.+ (str.to_re "a"))) (re.++ (re.+ (re.union (str.to_re "b") (str.to_re "ccc"))) (re.++ (re.* (re.* (str.to_re "dd"))) (re.++ (re.* (re.+ (str.to_re "e"))) (re.union (re.* (re.++ (re.* (re.+ re.allchar)) (re.* (re.* re.allchar)))) (re.+ (str.to_re "gg"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
