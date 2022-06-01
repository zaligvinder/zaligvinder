(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "000"))) (re.++ (re.* (re.+ (str.to_re "1"))) (re.++ (re.+ (re.* (str.to_re "2"))) (re.++ (re.union (re.union (str.to_re "3") (str.to_re "44")) (re.* (str.to_re "5"))) (re.++ (re.* (re.+ (str.to_re "66"))) (re.++ (re.* (re.* (str.to_re "777"))) (re.++ (re.union (re.+ (str.to_re "8")) (re.+ (str.to_re "9"))) (re.++ (re.union (re.+ (str.to_re "aa")) (re.+ (str.to_re "bb"))) (re.++ (re.union (re.+ (str.to_re "c")) (re.+ (str.to_re "dd"))) (re.+ (re.++ (str.to_re "ee") (str.to_re "ee"))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)
