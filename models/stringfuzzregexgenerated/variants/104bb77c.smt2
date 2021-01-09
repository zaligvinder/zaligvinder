(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.* (str.to.re "111"))) (re.++ (re.* (re.+ (str.to.re "22"))) (re.++ (re.+ (re.union (str.to.re "33") (str.to.re "4"))) (re.++ (re.+ (re.+ (str.to.re "555"))) (re.++ (re.+ (re.+ (str.to.re "66"))) (re.++ (re.* (re.union (str.to.re "7") (str.to.re "88"))) (re.++ (re.union (re.+ (str.to.re "99")) (re.union (str.to.re "aaa") (str.to.re "bbb"))) (re.++ (re.+ (re.union (str.to.re "c") (str.to.re "d"))) (re.++ (re.+ (re.+ (str.to.re "eee"))) (re.union (re.* (re.+ (re.* (re.+ re.allchar)))) (re.+ (str.to.re "g"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
