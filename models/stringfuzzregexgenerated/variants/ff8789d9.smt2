(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "0")) (re.* (str.to_re "1"))) (re.++ (re.union (re.+ (str.to_re "2")) (re.* (str.to_re "3"))) (re.++ (re.union (re.+ (str.to_re "4")) (re.+ (str.to_re "555"))) (re.++ (re.+ (re.* (str.to_re "666"))) (re.++ (re.* (re.+ (str.to_re "77"))) (re.++ (re.* (re.+ (str.to_re "888"))) (re.++ (re.* (re.+ (str.to_re "999"))) (re.++ (re.union (re.union (str.to_re "aaa") (str.to_re "bbb")) (re.+ (str.to_re "cc"))) (re.++ (re.* (re.+ (str.to_re "dd"))) (re.+ (re.* (str.to_re "e"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
