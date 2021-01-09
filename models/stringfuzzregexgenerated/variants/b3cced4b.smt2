(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.union (str.to.re "1") (str.to.re "222"))) (re.++ (re.union (re.+ (str.to.re "3")) (re.+ (str.to.re "44"))) (re.++ (re.* (re.* (str.to.re "55"))) (re.++ (re.+ (re.+ (str.to.re "6"))) (re.++ (re.+ (re.union (str.to.re "7") (str.to.re "888"))) (re.++ (re.+ (re.+ (str.to.re "99"))) (re.++ (re.union (re.+ (str.to.re "aa")) (re.* (str.to.re "bbb"))) (re.++ (re.union (re.+ (str.to.re "cc")) (re.+ (str.to.re "dd"))) (re.++ (re.* (re.+ (str.to.re "eee"))) (re.* (re.+ (str.to.re "ff"))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
