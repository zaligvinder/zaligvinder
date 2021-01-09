(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.+ (re.union (str.to.re "2") (str.to.re "3"))) (re.++ (re.+ (re.+ (str.to.re "44"))) (re.++ (re.* (re.* (str.to.re "55"))) (re.++ (re.union (re.* (str.to.re "66")) (re.* (str.to.re "77"))) (re.++ (re.union (re.union (str.to.re "888") (str.to.re "999")) (re.* (str.to.re "a"))) (re.++ (re.+ (re.+ (str.to.re "bbb"))) (re.++ (re.union (re.union (str.to.re "c") (str.to.re "ddd")) (re.* (str.to.re "ee"))) (re.++ (re.union (re.union (str.to.re "f") (str.to.re "g")) (re.union (str.to.re "hh") (str.to.re "iii"))) (re.+ (re.* (str.to.re "j"))))))))))))))
(assert (<= 176 (str.len var0)))
(check-sat)
