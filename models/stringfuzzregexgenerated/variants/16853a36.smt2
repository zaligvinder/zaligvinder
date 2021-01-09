(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "222")) (re.* (str.to.re "3"))) (re.++ (re.* (re.* (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "55"))) (re.++ (re.union (re.+ (str.to.re "66")) (re.union (str.to.re "7") (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "999"))) (re.++ (re.union (re.* (str.to.re "a")) (re.+ (str.to.re "b"))) (re.++ (re.+ (re.+ (str.to.re "cc"))) (re.++ (re.* (re.union (str.to.re "ddd") (str.to.re "eee"))) (re.union (re.union (str.to.re "f") (str.to.re "g")) (re.+ (str.to.re "hhh"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
