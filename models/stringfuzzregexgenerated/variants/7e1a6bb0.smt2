(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.+ (re.union (str.to.re "11") (str.to.re "2"))) (re.++ (re.* (re.union (str.to.re "33") (str.to.re "4"))) (re.++ (re.* (re.+ (str.to.re "5"))) (re.++ (re.+ (re.union (str.to.re "66") (str.to.re "777"))) (re.++ (re.union (re.+ (str.to.re "88")) (re.+ (str.to.re "99"))) (re.++ (re.* (re.+ (str.to.re "aa"))) (re.++ (re.+ (re.* (str.to.re "bbb"))) (re.++ (re.* (re.union (str.to.re "ccc") (str.to.re "dd"))) (re.union (re.* (str.to.re "eee")) (re.* (re.++ (re.* (re.+ (re.++ (str.to.re "") (str.to.re "")))) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
