(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.union (str.to.re "111") (str.to.re "2"))) (re.++ (re.* (re.union (str.to.re "3") (str.to.re "4"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.* (re.+ (str.to.re "66"))) (re.++ (re.union (re.* (str.to.re "777")) (re.+ (str.to.re "8"))) (re.++ (re.* (re.* (str.to.re "9"))) (re.++ (re.+ (re.+ (str.to.re "aa"))) (re.++ (re.+ (re.+ (str.to.re "b"))) (re.++ (re.+ (re.union (str.to.re "ccc") (str.to.re "dd"))) (re.++ (re.* (str.to.re "ee")) (re.* (str.to.re "ee"))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)
