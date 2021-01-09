(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "0"))) (re.++ (re.+ (re.+ (str.to.re "111"))) (re.++ (re.+ (re.union (str.to.re "222") (str.to.re "333"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.* (re.* (str.to.re "55"))) (re.++ (re.union (re.+ (str.to.re "66")) (re.union (str.to.re "7") (str.to.re "8"))) (re.++ (re.union (re.* (str.to.re "99")) (re.* (str.to.re "a"))) (re.++ (re.union (re.* (str.to.re "bbb")) (re.union (str.to.re "ccc") (str.to.re "ddd"))) (re.++ (re.+ (re.* (str.to.re "e"))) (re.* (re.++ (str.to.re "fff") (str.to.re "ggg"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
