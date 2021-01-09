(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "1"))) (re.++ (re.union (re.union (str.to.re "22") (str.to.re "3")) (re.+ (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "5"))) (re.++ (re.* (re.+ (str.to.re "66"))) (re.++ (re.union (re.+ (str.to.re "777")) (re.* (str.to.re "88"))) (re.++ (re.* (re.* (str.to.re "99"))) (re.++ (re.union (re.+ (str.to.re "a")) (re.* (str.to.re "bb"))) (re.++ (re.* (re.+ (re.* (re.+ (re.++ (str.to.re "") (str.to.re "")))))) (re.* (re.* (str.to.re "ddd"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
