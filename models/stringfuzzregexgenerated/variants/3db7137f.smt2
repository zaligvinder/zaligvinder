(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "000") (str.to.re "1"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.+ (str.to.re "333"))) (re.++ (re.* (re.* (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.union (re.+ (str.to.re "66")) (re.* (str.to.re "7"))) (re.++ (re.* (re.+ (str.to.re "8"))) (re.++ (re.union (re.+ (str.to.re "99")) (re.* (str.to.re "a"))) (re.++ (re.+ (re.+ (str.to.re "bb"))) (re.++ (re.* (re.+ (str.to.re "c"))) (re.union (re.union (str.to.re "ddd") (re.* (re.* (re.+ re.allchar)))) (re.* (str.to.re "ff"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
