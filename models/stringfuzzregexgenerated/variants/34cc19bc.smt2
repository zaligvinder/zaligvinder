(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "00"))) (re.++ (re.+ (re.union (str.to.re "1") (str.to.re "2"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "44")) (re.+ (str.to.re "555"))) (re.++ (re.union (re.+ (str.to.re "66")) (re.* (str.to.re "77"))) (re.++ (re.+ (re.+ (str.to.re "88"))) (re.++ (re.union (re.union (str.to.re "9") (str.to.re "aa")) (re.+ (str.to.re "bbb"))) (re.++ (re.+ (re.* (str.to.re "ccc"))) (re.++ (re.* (re.+ (str.to.re "dd"))) (re.++ (re.+ (re.* (str.to.re "eee"))) (re.* (re.+ (str.to.re "gg"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
