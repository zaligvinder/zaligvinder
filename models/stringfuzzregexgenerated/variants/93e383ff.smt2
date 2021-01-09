(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "1"))) (re.++ (re.* (re.* (str.to.re "222"))) (re.++ (re.union (re.union (str.to.re "333") (str.to.re "4")) (re.+ (str.to.re "55"))) (re.++ (re.* (re.+ (str.to.re "666"))) (re.++ (re.* (re.* (str.to.re "7"))) (re.++ (re.* (re.union (str.to.re "8") (str.to.re "9"))) (re.++ (re.* (re.* (str.to.re "aa"))) (re.++ (re.* (re.+ (str.to.re "bbb"))) (re.++ (re.+ (re.union (str.to.re "cc") (str.to.re "ddd"))) (re.+ (re.+ (str.to.re "eee"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
