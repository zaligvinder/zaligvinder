(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.union (re.+ (str.to.re "1")) (re.+ (str.to.re "222"))) (re.++ (re.+ (re.* (str.to.re "3"))) (re.++ (re.* (re.+ (str.to.re "4"))) (re.++ (re.union (re.* (str.to.re "555")) (re.union (str.to.re "666") (str.to.re "77"))) (re.++ (re.union (re.+ (str.to.re "8")) (re.* (str.to.re "9"))) (re.++ (re.union (re.+ (str.to.re "a")) (re.* (str.to.re "bbb"))) (re.++ (re.+ (re.union (str.to.re "c") (str.to.re "dd"))) (re.++ (re.+ (re.* (str.to.re "e"))) (re.* (re.union (str.to.re "f") (re.* (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
