(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.* (re.+ (str.to.re "111"))) (re.++ (re.+ (re.* (str.to.re "222"))) (re.++ (re.* (re.* (str.to.re "3"))) (re.++ (re.* (re.* (str.to.re "444"))) (re.++ (re.* (re.+ (str.to.re "555"))) (re.++ (re.union (re.* (str.to.re "66")) (re.+ (str.to.re "77"))) (re.++ (re.* (re.* (str.to.re "888"))) (re.++ (re.+ (re.* (str.to.re "9"))) (re.* (re.union (re.* (re.+ (str.to.re ""))) (str.to.re "bb"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
