(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "000")) (re.union (str.to.re "11") (str.to.re "222"))) (re.++ (re.union (re.* (str.to.re "33")) (re.union (str.to.re "44") (str.to.re "5"))) (re.++ (re.+ (re.* (str.to.re "66"))) (re.++ (re.* (re.+ (str.to.re "7"))) (re.++ (re.* (re.+ (str.to.re "88"))) (re.++ (re.* (re.* (str.to.re "9"))) (re.++ (re.+ (re.+ (str.to.re "a"))) (re.++ (re.* (re.+ (str.to.re "bbb"))) (re.++ (re.union (re.+ (str.to.re "c")) (re.* (str.to.re "dd"))) (re.union (re.union (str.to.re "e") (str.to.re "f")) (re.+ (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
