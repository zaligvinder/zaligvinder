(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "000"))) (re.++ (re.+ (re.union (str.to_re "1") (str.to_re "22"))) (re.++ (re.* (re.* (str.to_re "3"))) (re.++ (re.+ (re.union (str.to_re "4") (str.to_re "555"))) (re.++ (re.* (re.union (str.to_re "6") (str.to_re "7"))) (re.++ (re.union (re.+ (str.to_re "8")) (re.union (str.to_re "99") (str.to_re "aaa"))) (re.++ (re.* (re.+ (str.to_re "bbb"))) (re.++ (re.union (re.union (str.to_re "c") (str.to_re "ddd")) (re.union (str.to_re "eee") (str.to_re "fff"))) (re.++ (re.* (re.* (str.to_re "ggg"))) (re.* (re.* (str.to_re "i"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
