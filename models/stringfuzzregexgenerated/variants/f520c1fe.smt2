(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.+ (str.to.re "11"))) (re.++ (re.union (re.* (str.to.re "22")) (re.+ (str.to.re "33"))) (re.++ (re.union (re.union (str.to.re "4") (str.to.re "555")) (re.* (str.to.re "66"))) (re.++ (re.+ (re.* (str.to.re "777"))) (re.++ (re.+ (re.+ (str.to.re "88"))) (re.++ (re.+ (re.union (str.to.re "99") (str.to.re "a"))) (re.++ (re.* (re.* (str.to.re "b"))) (re.++ (re.union (re.* (str.to.re "cc")) (re.+ (str.to.re "d"))) (re.++ (re.* (re.+ (str.to.re "e"))) (re.+ (re.union (str.to.re "fff") (re.++ (re.++ (str.to.re "") (str.to.re "")) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 176 (str.len var0)))
(check-sat)
