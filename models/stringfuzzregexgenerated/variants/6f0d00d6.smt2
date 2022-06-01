(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "00"))) (re.++ (re.+ (re.* (str.to_re "1"))) (re.++ (re.* (re.union (str.to_re "222") (str.to_re "3"))) (re.++ (re.union (re.union (str.to_re "44") (str.to_re "5")) (re.union (str.to_re "666") (str.to_re "777"))) (re.++ (re.union (re.union (str.to_re "8") (str.to_re "9")) (re.+ (str.to_re "a"))) (re.++ (re.* (re.union (str.to_re "bb") (str.to_re "cc"))) (re.++ (re.* (re.union (str.to_re "ddd") (str.to_re "ee"))) (re.++ (re.+ (re.union (str.to_re "fff") (str.to_re "g"))) (re.++ (re.union (re.* (str.to_re "hhh")) (re.+ (str.to_re "i"))) (re.* (re.* (re.++ (re.++ (re.+ re.allchar) (re.* re.allchar)) (re.++ (re.+ (re.* re.allchar)) (re.* re.allchar))))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
