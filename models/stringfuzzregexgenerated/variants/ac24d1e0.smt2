(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "00") (str.to.re "11")) (re.+ (str.to.re "222"))) (re.++ (re.+ (re.* (str.to.re "3"))) (re.++ (re.* (re.+ (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "5"))) (re.++ (re.* (re.* (str.to.re "66"))) (re.++ (re.* (re.+ (str.to.re "777"))) (re.++ (re.* (re.+ (str.to.re "8"))) (re.++ (re.+ (re.+ (str.to.re "99"))) (re.++ (re.union (re.* (str.to.re "aaa")) (re.+ (str.to.re "bb"))) (re.+ (re.+ (re.* (re.+ (re.++ (str.to.re "") re.allchar))))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)
