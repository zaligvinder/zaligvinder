(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "000") (str.to_re "111"))) (re.++ (re.* (re.+ (str.to_re "2"))) (re.++ (re.union (re.* (str.to_re "3")) (re.union (str.to_re "44") (str.to_re "555"))) (re.++ (re.* (re.* (str.to_re "6"))) (re.++ (re.union (re.* (str.to_re "77")) (re.+ (str.to_re "888"))) (re.++ (re.+ (re.+ (str.to_re "9"))) (re.++ (re.* (re.union (str.to_re "aaa") (str.to_re "bb"))) (re.++ (re.union (re.* (str.to_re "c")) (re.union (str.to_re "d") (str.to_re "eee"))) (re.++ (re.+ (re.+ (str.to_re "ff"))) (re.union (re.* (str.to_re "gg")) (re.union (str.to_re "hh") (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
