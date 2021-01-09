(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.+ (re.union (str.to.re "111") (str.to.re "2"))) (re.++ (re.* (re.union (str.to.re "333") (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.* (re.* (str.to.re "66"))) (re.++ (re.+ (re.* (str.to.re "777"))) (re.++ (re.* (re.+ (str.to.re "88"))) (re.++ (re.union (re.+ (str.to.re "99")) (re.union (str.to.re "aa") (str.to.re "bbb"))) (re.++ (re.* (re.union (str.to.re "c") (str.to.re "dd"))) (re.+ (re.++ (str.to.re "eee") (str.to.re "fff"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
