(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.* (re.union (str.to.re "111") (str.to.re "2"))) (re.++ (re.union (re.* (str.to.re "3")) (re.+ (str.to.re "4"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "6"))) (re.++ (re.* (re.+ (str.to.re "77"))) (re.++ (re.+ (re.union (str.to.re "888") (str.to.re "99"))) (re.++ (re.* (re.union (str.to.re "aaa") (str.to.re "b"))) (re.++ (re.+ (re.+ (str.to.re "c"))) (re.++ (re.* (re.* (str.to.re "d"))) (re.+ (re.+ (str.to.re "eee"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
