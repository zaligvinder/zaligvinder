(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "1"))) (re.++ (re.+ (re.union (str.to.re "222") (str.to.re "33"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.+ (re.+ (str.to.re "55"))) (re.++ (re.+ (re.union (str.to.re "6") (str.to.re "777"))) (re.++ (re.* (re.union (str.to.re "8") (str.to.re "9"))) (re.++ (re.union (re.union (str.to.re "aaa") (str.to.re "bb")) (re.+ (str.to.re "ccc"))) (re.++ (re.* (re.+ (str.to.re "ddd"))) (re.+ (re.++ (str.to.re "eee") (str.to.re "eee"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
