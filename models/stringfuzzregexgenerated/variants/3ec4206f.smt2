(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "000"))) (re.++ (re.union (re.+ (str.to_re "1")) (re.union (str.to_re "22") (str.to_re "33"))) (re.++ (re.+ (re.union (str.to_re "4") (str.to_re "55"))) (re.++ (re.union (re.* (str.to_re "66")) (re.+ (str.to_re "77"))) (re.++ (re.union (re.union (str.to_re "888") (str.to_re "999")) (re.union (str.to_re "aaa") (str.to_re "b"))) (re.++ (re.union (re.union (str.to_re "cc") (str.to_re "d")) (re.+ (str.to_re "e"))) (re.++ (re.union (re.+ (str.to_re "ff")) (re.+ (str.to_re "gg"))) (re.++ (re.+ (re.+ (str.to_re "hhh"))) (re.++ (re.* (re.* (str.to_re "ii"))) (re.* (re.union (str.to_re "j") (re.++ (re.* re.allchar) (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
