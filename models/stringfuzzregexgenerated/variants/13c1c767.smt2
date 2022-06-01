(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "00"))) (re.++ (re.union (re.* (str.to_re "1")) (re.* (str.to_re "2"))) (re.++ (re.* (re.union (str.to_re "333") (str.to_re "44"))) (re.++ (re.+ (re.* (str.to_re "5"))) (re.++ (re.union (re.* (str.to_re "666")) (re.+ (str.to_re "7"))) (re.++ (re.union (re.union (str.to_re "8") (str.to_re "999")) (re.+ (str.to_re "a"))) (re.++ (re.+ (re.* (str.to_re "bb"))) (re.++ (re.+ (re.* (str.to_re "cc"))) (re.++ (re.union (re.union (str.to_re "dd") (str.to_re "e")) (re.union (str.to_re "fff") (str.to_re "gg"))) (re.* (re.++ (str.to_re "hhh") (str.to_re "hhh"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
