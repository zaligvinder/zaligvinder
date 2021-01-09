(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "11"))) (re.++ (re.* (re.union (str.to.re "222") (str.to.re "33"))) (re.++ (re.+ (re.* (str.to.re "4"))) (re.++ (re.union (re.* (str.to.re "55")) (re.* (str.to.re "66"))) (re.++ (re.* (re.+ (str.to.re "7"))) (re.++ (re.* (re.union (str.to.re "8") (str.to.re "99"))) (re.++ (re.+ (re.union (str.to.re "aaa") (str.to.re "bb"))) (re.++ (re.+ (re.union (str.to.re "ccc") (str.to.re "ddd"))) (re.union (re.+ (str.to.re "ee")) (re.* (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
