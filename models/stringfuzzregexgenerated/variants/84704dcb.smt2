(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "0") (str.to.re "111"))) (re.++ (re.union (re.* (str.to.re "22")) (re.union (str.to.re "33") (str.to.re "4"))) (re.++ (re.* (re.+ (str.to.re "555"))) (re.++ (re.+ (re.* (str.to.re "6"))) (re.++ (re.* (re.* (str.to.re "77"))) (re.++ (re.* (re.union (str.to.re "88") (str.to.re "999"))) (re.++ (re.union (re.+ (str.to.re "a")) (re.union (str.to.re "bbb") (str.to.re "ccc"))) (re.++ (re.* (re.+ (str.to.re "ddd"))) (re.++ (re.* (re.* (str.to.re "e"))) (re.union (re.union (str.to.re "fff") (str.to.re "ggg")) (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
