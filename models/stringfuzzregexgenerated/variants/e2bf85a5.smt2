(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.+ (re.+ (str.to_re "111"))) (re.++ (re.* (re.* (str.to_re "22"))) (re.++ (re.union (re.union (str.to_re "333") (str.to_re "44")) (re.* (str.to_re "555"))) (re.++ (re.+ (re.union (str.to_re "6") (str.to_re "777"))) (re.++ (re.+ (re.* (str.to_re "88"))) (re.++ (re.union (re.union (str.to_re "999") (str.to_re "a")) (re.+ (str.to_re "b"))) (re.++ (re.* (re.+ (str.to_re "cc"))) (re.++ (re.union (re.union (str.to_re "dd") (str.to_re "ee")) (re.+ (str.to_re "ff"))) (re.* (re.union (str.to_re "gg") (re.* (re.++ (str.to_re "") (str.to_re ""))))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
