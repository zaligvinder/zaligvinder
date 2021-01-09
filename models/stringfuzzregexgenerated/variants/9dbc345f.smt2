(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.+ (re.* (str.to.re "11"))) (re.++ (re.* (re.+ (str.to.re "2"))) (re.++ (re.* (re.union (str.to.re "33") (str.to.re "44"))) (re.++ (re.* (re.+ (str.to.re "5"))) (re.++ (re.union (re.+ (str.to.re "6")) (re.+ (str.to.re "777"))) (re.++ (re.union (re.* (str.to.re "8")) (re.+ (str.to.re "9"))) (re.++ (re.+ (re.+ (str.to.re "a"))) (re.++ (re.+ (re.* (str.to.re "b"))) (re.* (re.+ (re.+ (re.+ (re.++ (str.to.re "") re.allchar))))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
