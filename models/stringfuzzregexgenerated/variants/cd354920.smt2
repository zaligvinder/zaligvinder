(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "11"))) (re.++ (re.union (re.union (str.to.re "2") (str.to.re "33")) (re.+ (str.to.re "4"))) (re.++ (re.union (re.* (str.to.re "5")) (re.* (str.to.re "6"))) (re.++ (re.union (re.union (str.to.re "7") (str.to.re "88")) (re.* (str.to.re "9"))) (re.++ (re.+ (re.+ (str.to.re "aa"))) (re.++ (re.+ (re.* (str.to.re "bbb"))) (re.++ (re.+ (re.union (str.to.re "c") (str.to.re "dd"))) (re.++ (re.union (re.* (str.to.re "e")) (re.+ (str.to.re "fff"))) (re.* (re.+ (re.* (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
