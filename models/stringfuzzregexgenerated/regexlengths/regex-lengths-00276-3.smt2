(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "00"))) (re.++ (re.* (re.+ (str.to.re "11"))) (re.++ (re.+ (re.* (str.to.re "222"))) (re.++ (re.* (re.union (str.to.re "33") (str.to.re "44"))) (re.++ (re.union (re.* (str.to.re "555")) (re.union (str.to.re "6") (str.to.re "777"))) (re.++ (re.union (re.* (str.to.re "88")) (re.* (str.to.re "99"))) (re.++ (re.* (re.* (str.to.re "aaa"))) (re.++ (re.+ (re.+ (str.to.re "bb"))) (re.++ (re.union (re.+ (str.to.re "cc")) (re.* (str.to.re "d"))) (re.+ (re.* (str.to.re "eee"))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)