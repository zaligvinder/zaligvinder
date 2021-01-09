(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "0") (str.to.re "11"))) (re.++ (re.+ (re.union (str.to.re "2") (str.to.re "33"))) (re.++ (re.* (re.union (str.to.re "44") (str.to.re "55"))) (re.++ (re.union (re.+ (str.to.re "6")) (re.+ (str.to.re "77"))) (re.++ (re.* (re.union (str.to.re "8") (str.to.re "999"))) (re.++ (re.+ (re.+ (str.to.re "aaa"))) (re.++ (re.+ (re.union (str.to.re "b") (str.to.re "cc"))) (re.++ (re.* (re.+ (str.to.re "d"))) (re.++ (re.* (re.union (str.to.re "ee") (str.to.re "f"))) (re.union (re.union (str.to.re "ggg") (str.to.re "h")) (re.* (re.* (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
