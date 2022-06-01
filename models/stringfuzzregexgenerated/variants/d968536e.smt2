(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "000"))) (re.++ (re.union (re.+ (str.to_re "1")) (re.union (str.to_re "2") (str.to_re "33"))) (re.++ (re.union (re.union (str.to_re "4") (str.to_re "555")) (re.+ (str.to_re "666"))) (re.++ (re.+ (re.+ (str.to_re "7"))) (re.++ (re.union (re.* (str.to_re "8")) (re.* (str.to_re "99"))) (re.++ (re.+ (re.+ (str.to_re "a"))) (re.++ (re.+ (re.* (str.to_re "bbb"))) (re.++ (re.union (re.* (str.to_re "ccc")) (re.+ (str.to_re "ddd"))) (re.++ (re.+ (re.+ (str.to_re "e"))) (re.union (re.* (str.to_re "fff")) (re.union (str.to_re "gg") (re.++ (re.++ (re.+ re.allchar) (re.* re.allchar)) (re.++ (re.+ (re.* re.allchar)) (re.* re.allchar))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
