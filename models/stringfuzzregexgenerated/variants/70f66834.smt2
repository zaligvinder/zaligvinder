(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "000"))) (re.++ (re.* (re.+ (str.to.re "111"))) (re.++ (re.+ (re.* (str.to.re "2"))) (re.++ (re.union (re.+ (str.to.re "3")) (re.union (str.to.re "444") (str.to.re "555"))) (re.++ (re.union (re.union (str.to.re "66") (str.to.re "777")) (re.* (str.to.re "88"))) (re.++ (re.* (re.* (str.to.re "9"))) (re.++ (re.+ (re.* (str.to.re "aaa"))) (re.++ (re.* (re.+ (str.to.re "bb"))) (re.* (re.* (re.* (str.to.re "c"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
