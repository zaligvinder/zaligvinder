(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "0")) (re.union (str.to_re "111") (str.to_re "2"))) (re.++ (re.+ (re.union (str.to_re "333") (str.to_re "44"))) (re.++ (re.union (re.union (str.to_re "555") (str.to_re "66")) (re.+ (str.to_re "7"))) (re.++ (re.* (re.* (str.to_re "8"))) (re.++ (re.+ (re.+ (str.to_re "999"))) (re.++ (re.union (re.union (str.to_re "aaa") (str.to_re "bb")) (re.* (str.to_re "c"))) (re.++ (re.+ (re.+ (str.to_re "d"))) (re.++ (re.* (re.union (str.to_re "ee") (str.to_re "ff"))) (re.++ (re.union (re.union (str.to_re "ggg") (str.to_re "hh")) (re.union (re.* (re.* (re.* re.allchar))) (str.to_re "jjj"))) (re.* (re.* (str.to_re "kkk"))))))))))))))
(assert (<= 176 (str.len var0)))
(check-sat)
