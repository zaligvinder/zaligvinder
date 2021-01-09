(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.union (re.* (str.to.re "1")) (re.* (str.to.re "222"))) (re.++ (re.* (re.union (str.to.re "333") (str.to.re "444"))) (re.++ (re.+ (re.* (str.to.re "5"))) (re.++ (re.+ (re.union (str.to.re "666") (str.to.re "777"))) (re.++ (re.* (re.union (str.to.re "88") (str.to.re "9"))) (re.++ (re.* (re.union (str.to.re "a") (str.to.re "bb"))) (re.++ (re.* (re.+ (str.to.re "cc"))) (re.++ (re.+ (re.* (str.to.re "dd"))) (re.* (re.* (str.to.re "e"))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
