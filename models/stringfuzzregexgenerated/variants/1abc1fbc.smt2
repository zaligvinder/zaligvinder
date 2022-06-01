(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "111"))) (re.++ (re.union (re.+ (str.to_re "222")) (re.* (str.to_re "3"))) (re.++ (re.union (re.* (str.to_re "44")) (re.union (str.to_re "5") (str.to_re "66"))) (re.++ (re.union (re.+ (str.to_re "777")) (re.+ (str.to_re "8"))) (re.++ (re.+ (re.+ (str.to_re "99"))) (re.++ (re.+ (re.* (str.to_re "a"))) (re.++ (re.union (re.union (str.to_re "bbb") (str.to_re "c")) (re.union (str.to_re "d") (str.to_re "e"))) (re.++ (re.+ (re.union (str.to_re "fff") (str.to_re "gg"))) (re.++ (re.union (re.* (str.to_re "h")) (re.union (str.to_re "ii") (str.to_re "j"))) (re.+ (re.union (re.* (re.* re.allchar)) (str.to_re "lll"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
