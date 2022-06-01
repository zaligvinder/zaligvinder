(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "00"))) (re.++ (re.union (re.+ (str.to_re "1")) (re.* (str.to_re "222"))) (re.++ (re.+ (re.union (str.to_re "3") (str.to_re "4"))) (re.++ (re.union (re.* (str.to_re "5")) (re.union (str.to_re "666") (str.to_re "7"))) (re.++ (re.* (re.union (str.to_re "888") (str.to_re "999"))) (re.++ (re.+ (re.+ (str.to_re "aa"))) (re.++ (re.union (re.* (str.to_re "bb")) (re.* (str.to_re "ccc"))) (re.++ (re.union (re.* (str.to_re "d")) (re.* (str.to_re "eee"))) (re.++ (re.* (re.union (re.+ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar)))) (str.to_re "ggg"))) (re.* (re.+ (str.to_re "hh"))))))))))))))
(assert (<= 51 (str.len var0)))
(check-sat)
