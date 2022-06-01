(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.union (str.to_re "1") (str.to_re "222"))) (re.++ (re.* (re.+ (str.to_re "33"))) (re.++ (re.* (re.+ (str.to_re "4"))) (re.++ (re.union (re.+ (str.to_re "55")) (re.* (str.to_re "666"))) (re.++ (re.+ (re.union (str.to_re "77") (str.to_re "88"))) (re.++ (re.union (re.+ (str.to_re "999")) (re.* (str.to_re "a"))) (re.++ (re.union (re.union (str.to_re "bbb") (str.to_re "c")) (re.+ (str.to_re "dd"))) (re.++ (re.union (re.* (str.to_re "ee")) (re.* (str.to_re "fff"))) (re.++ (re.+ (re.union (str.to_re "g") (str.to_re "hhh"))) (re.union (re.+ (str.to_re "i")) (re.union (re.+ (re.* re.allchar)) (str.to_re "kk"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
