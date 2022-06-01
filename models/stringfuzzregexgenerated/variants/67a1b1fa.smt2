(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "00"))) (re.++ (re.union (re.union (str.to_re "11") (str.to_re "22")) (re.+ (str.to_re "333"))) (re.++ (re.+ (re.+ (str.to_re "4"))) (re.++ (re.* (re.* (str.to_re "555"))) (re.++ (re.union (re.union (str.to_re "6") (str.to_re "7")) (re.+ (str.to_re "8"))) (re.++ (re.* (re.* (str.to_re "999"))) (re.++ (re.* (re.+ (str.to_re "aa"))) (re.++ (re.+ (re.+ (str.to_re "b"))) (re.++ (re.union (re.union (str.to_re "cc") (str.to_re "dd")) (re.+ (str.to_re "e"))) (re.+ (re.+ (str.to_re "f"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
