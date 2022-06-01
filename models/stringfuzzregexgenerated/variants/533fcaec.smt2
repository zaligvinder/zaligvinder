(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "00"))) (re.++ (re.union (re.* (str.to_re "1")) (re.* (str.to_re "22"))) (re.++ (re.union (re.* (str.to_re "333")) (re.* (str.to_re "44"))) (re.++ (re.+ (re.+ (str.to_re "55"))) (re.++ (re.+ (re.+ (str.to_re "666"))) (re.++ (re.* (re.* (str.to_re "77"))) (re.++ (re.+ (re.union (str.to_re "88") (str.to_re "999"))) (re.++ (re.union (re.union (str.to_re "a") (str.to_re "bbb")) (re.union (str.to_re "cc") (str.to_re "dd"))) (re.++ (re.union (re.+ (str.to_re "ee")) (re.union (str.to_re "f") (str.to_re "ggg"))) (re.* (re.union (str.to_re "hh") (re.++ (re.++ (re.+ re.allchar) (re.* re.allchar)) (re.++ (re.+ (re.* re.allchar)) (re.* re.allchar))))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
