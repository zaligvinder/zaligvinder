(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "0") (str.to.re "111"))) (re.++ (re.* (re.union (str.to.re "222") (str.to.re "3"))) (re.++ (re.* (re.* (str.to.re "4"))) (re.++ (re.union (re.union (str.to.re "555") (str.to.re "66")) (re.+ (str.to.re "7"))) (re.++ (re.union (re.union (str.to.re "888") (str.to.re "99")) (re.* (str.to.re "aa"))) (re.++ (re.* (re.* (str.to.re "bbb"))) (re.++ (re.+ (re.* (str.to.re "ccc"))) (re.++ (re.union (re.* (str.to.re "ddd")) (re.union (str.to.re "eee") (str.to.re "fff"))) (re.++ (re.+ (re.* (str.to.re "gg"))) (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
