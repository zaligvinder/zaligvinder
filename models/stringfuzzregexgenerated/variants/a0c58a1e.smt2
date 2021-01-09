(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "111"))) (re.++ (re.* (re.+ (str.to.re "22"))) (re.++ (re.* (re.+ (str.to.re "333"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.union (re.+ (str.to.re "5")) (re.union (str.to.re "66") (str.to.re "777"))) (re.++ (re.+ (re.+ (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "9"))) (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "bbb"))) (re.++ (re.union (re.union (str.to.re "c") (str.to.re "d")) (re.* (str.to.re "ee"))) (re.+ (re.* (re.+ (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 176 (str.len var0)))
(check-sat)
