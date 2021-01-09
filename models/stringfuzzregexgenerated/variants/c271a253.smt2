(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "000")) (re.* (str.to.re "1"))) (re.++ (re.* (re.+ (str.to.re "222"))) (re.++ (re.+ (re.* (str.to.re "333"))) (re.++ (re.union (re.+ (str.to.re "4")) (re.union (str.to.re "5") (str.to.re "66"))) (re.++ (re.* (re.* (str.to.re "777"))) (re.++ (re.+ (re.union (str.to.re "888") (str.to.re "999"))) (re.++ (re.* (re.+ (str.to.re "a"))) (re.++ (re.+ (re.* (str.to.re "bbb"))) (re.++ (re.union (re.+ (str.to.re "c")) (re.* (str.to.re "d"))) (re.* (re.* (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
