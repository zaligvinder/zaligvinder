(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "0")) (re.+ (str.to_re "11"))) (re.++ (re.* (re.union (str.to_re "222") (str.to_re "3"))) (re.++ (re.+ (re.+ (str.to_re "444"))) (re.++ (re.* (re.* (str.to_re "5"))) (re.++ (re.union (re.+ (str.to_re "666")) (re.union (str.to_re "777") (str.to_re "888"))) (re.++ (re.+ (re.union (str.to_re "9") (str.to_re "a"))) (re.++ (re.* (re.+ (str.to_re "bbb"))) (re.++ (re.+ (re.union (str.to_re "c") (str.to_re "d"))) (re.++ (re.+ (re.* (str.to_re "eee"))) (re.union (re.+ (str.to_re "ff")) (re.union (str.to_re "gg") (re.++ (re.++ (str.to_re "") (str.to_re "")) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
