(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.* (re.+ (str.to.re "11"))) (re.++ (re.union (re.union (str.to.re "222") (str.to.re "33")) (re.* (str.to.re "444"))) (re.++ (re.* (re.union (str.to.re "5") (str.to.re "666"))) (re.++ (re.+ (re.+ (str.to.re "777"))) (re.++ (re.+ (re.+ (str.to.re "8"))) (re.++ (re.* (re.union (str.to.re "9") (str.to.re "aaa"))) (re.++ (re.+ (re.union (str.to.re "b") (str.to.re "c"))) (re.++ (re.* (re.* (str.to.re "d"))) (re.+ (re.+ (str.to.re "ee"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
