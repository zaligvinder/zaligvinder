(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.union (re.+ (str.to_re "1")) (re.+ (str.to_re "222"))) (re.++ (re.+ (re.* (str.to_re "3"))) (re.++ (re.* (re.+ (str.to_re "4"))) (re.++ (re.union (re.* (str.to_re "555")) (re.union (str.to_re "666") (str.to_re "77"))) (re.++ (re.union (re.+ (str.to_re "8")) (re.* (str.to_re "9"))) (re.++ (re.union (re.+ (str.to_re "a")) (re.* (str.to_re "bbb"))) (re.++ (re.+ (re.union (str.to_re "c") (str.to_re "dd"))) (re.++ (re.+ (re.* (str.to_re "e"))) (re.* (re.union (str.to_re "f") (re.++ (re.++ (str.to_re "") (str.to_re "")) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
