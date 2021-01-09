(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "00"))) (re.++ (re.* (re.+ (str.to.re "111"))) (re.++ (re.* (re.union (str.to.re "222") (str.to.re "3"))) (re.++ (re.+ (re.+ (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.+ (re.+ (str.to.re "666"))) (re.++ (re.+ (re.union (str.to.re "777") (str.to.re "88"))) (re.++ (re.union (re.+ (str.to.re "99")) (re.* (str.to.re "aaa"))) (re.++ (re.+ (re.union (str.to.re "b") (str.to.re "c"))) (re.union (re.union (str.to.re "dd") (str.to.re "ee")) (re.+ (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
