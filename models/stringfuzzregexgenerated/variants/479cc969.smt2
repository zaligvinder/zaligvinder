(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "00"))) (re.++ (re.union (re.* (str.to.re "11")) (re.union (str.to.re "2") (str.to.re "333"))) (re.++ (re.* (re.+ (str.to.re "4"))) (re.++ (re.* (re.* (str.to.re "55"))) (re.++ (re.union (re.union (str.to.re "6") (str.to.re "777")) (re.+ (str.to.re "8"))) (re.++ (re.+ (re.* (str.to.re "9"))) (re.++ (re.* (re.+ (str.to.re "a"))) (re.++ (re.+ (re.+ (str.to.re "bb"))) (re.++ (re.union (re.+ (str.to.re "ccc")) (re.* (str.to.re "d"))) (re.+ (re.* (re.++ (re.* (re.+ (re.++ (str.to.re "") (str.to.re "")))) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)
