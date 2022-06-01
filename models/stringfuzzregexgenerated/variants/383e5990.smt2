(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "0"))) (re.++ (re.+ (re.+ (str.to_re "11"))) (re.++ (re.+ (re.+ (str.to_re "2"))) (re.++ (re.+ (re.* (str.to_re "33"))) (re.++ (re.union (re.union (str.to_re "44") (str.to_re "55")) (re.* (str.to_re "666"))) (re.++ (re.union (re.+ (str.to_re "7")) (re.+ (str.to_re "8"))) (re.++ (re.* (re.union (str.to_re "999") (str.to_re "a"))) (re.++ (re.+ (re.* (str.to_re "bb"))) (re.++ (re.* (re.* (str.to_re "ccc"))) (re.union (re.* (str.to_re "d")) (re.union (re.++ (re.++ (re.+ (re.++ (str.to_re "") (str.to_re ""))) (re.+ re.allchar)) (re.* re.allchar)) (str.to_re "ff"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
