(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "00"))) (re.++ (re.* (re.+ (str.to_re "1"))) (re.++ (re.* (re.* (str.to_re "222"))) (re.++ (re.union (re.+ (str.to_re "33")) (re.union (str.to_re "44") (str.to_re "55"))) (re.++ (re.+ (re.union (str.to_re "6") (str.to_re "77"))) (re.++ (re.union (re.union (str.to_re "8") (str.to_re "999")) (re.+ (str.to_re "a"))) (re.++ (re.union (re.+ (str.to_re "bb")) (re.* (str.to_re "c"))) (re.++ (re.* (re.* (str.to_re "dd"))) (re.++ (re.union (re.+ (str.to_re "e")) (re.union (str.to_re "fff") (str.to_re "g"))) (re.* (re.union (str.to_re "hh") (re.* (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
