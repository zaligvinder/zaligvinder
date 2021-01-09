(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "111"))) (re.++ (re.* (re.* (str.to.re "22"))) (re.++ (re.+ (re.+ (str.to.re "333"))) (re.++ (re.+ (re.* (str.to.re "44"))) (re.++ (re.union (re.+ (str.to.re "55")) (re.union (str.to.re "66") (str.to.re "777"))) (re.++ (re.union (re.+ (str.to.re "88")) (re.union (str.to.re "999") (str.to.re "a"))) (re.++ (re.* (re.+ (str.to.re "b"))) (re.++ (re.* (re.* (str.to.re "cc"))) (re.++ (re.union (re.* (str.to.re "ddd")) (re.union (str.to.re "ee") (str.to.re "ff"))) (re.++ (re.+ (str.to.re "g")) (re.+ (str.to.re "g"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
