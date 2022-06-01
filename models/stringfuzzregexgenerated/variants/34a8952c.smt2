(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "000") (str.to_re "1"))) (re.++ (re.union (re.* (str.to_re "222")) (re.+ (str.to_re "3"))) (re.++ (re.* (re.union (str.to_re "444") (str.to_re "555"))) (re.++ (re.+ (re.union (str.to_re "66") (str.to_re "77"))) (re.++ (re.+ (re.union (str.to_re "8") (str.to_re "9"))) (re.++ (re.union (re.union (str.to_re "a") (str.to_re "bb")) (re.union (str.to_re "c") (str.to_re "dd"))) (re.++ (re.* (re.union (str.to_re "eee") (str.to_re "ff"))) (re.++ (re.union (re.+ (str.to_re "g")) (re.* (str.to_re "hhh"))) (re.++ (re.* (re.union (str.to_re "i") (str.to_re "jjj"))) (re.* (re.* (str.to_re "k"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
