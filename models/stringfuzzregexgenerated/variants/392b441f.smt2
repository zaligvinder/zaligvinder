(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "000"))) (re.++ (re.* (re.union (str.to_re "11") (str.to_re "22"))) (re.++ (re.+ (re.union (str.to_re "333") (str.to_re "44"))) (re.++ (re.* (re.+ (str.to_re "5"))) (re.++ (re.* (re.union (str.to_re "66") (str.to_re "777"))) (re.++ (re.+ (re.+ (str.to_re "8"))) (re.++ (re.union (re.+ (str.to_re "9")) (re.* (str.to_re "a"))) (re.++ (re.* (re.+ (str.to_re "bb"))) (re.++ (re.* (re.union (str.to_re "cc") (str.to_re "d"))) (re.+ (re.* (str.to_re "e"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
