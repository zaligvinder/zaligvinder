(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "000"))) (re.++ (re.+ (re.* (str.to.re "111"))) (re.++ (re.* (re.* (str.to.re "2"))) (re.++ (re.* (re.+ (str.to.re "3"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "5")) (re.+ (str.to.re "6"))) (re.++ (re.union (re.* (str.to.re "777")) (re.* (str.to.re "8"))) (re.++ (re.+ (re.* (str.to.re "999"))) (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "b"))) (re.++ (re.union (re.* (str.to.re "c")) (re.* (str.to.re "ddd"))) (re.union (re.+ (str.to.re "ee")) (re.union (str.to.re "ff") (re.++ (re.++ (str.to.re "") (str.to.re "")) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
