(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "00")) (re.+ (str.to.re "1"))) (re.++ (re.* (re.+ (str.to.re "222"))) (re.++ (re.* (re.* (str.to.re "333"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "5")) (re.+ (str.to.re "66"))) (re.++ (re.* (re.* (str.to.re "777"))) (re.++ (re.union (re.union (str.to.re "8") (str.to.re "9")) (re.* (str.to.re "aa"))) (re.++ (re.union (re.* (str.to.re "bb")) (re.+ (str.to.re "ccc"))) (re.++ (re.* (re.+ (str.to.re "d"))) (re.++ (re.* (re.+ (str.to.re "eee"))) (re.* (re.union (str.to.re "f") (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
