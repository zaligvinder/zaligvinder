(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.union (re.union (str.to.re "1") (str.to.re "22")) (re.* (str.to.re "333"))) (re.++ (re.* (re.union (str.to.re "4") (str.to.re "55"))) (re.++ (re.* (re.+ (str.to.re "6"))) (re.++ (re.+ (re.union (str.to.re "77") (str.to.re "888"))) (re.++ (re.union (re.+ (str.to.re "99")) (re.* (str.to.re "aa"))) (re.++ (re.* (re.* (str.to.re "b"))) (re.++ (re.+ (re.* (str.to.re "ccc"))) (re.++ (re.* (re.* (str.to.re "dd"))) (re.* (re.* (str.to.re "e"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
