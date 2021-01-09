(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "00")) (re.+ (str.to.re "11"))) (re.++ (re.+ (re.+ (str.to.re "22"))) (re.++ (re.* (re.+ (str.to.re "3"))) (re.++ (re.union (re.union (str.to.re "444") (str.to.re "55")) (re.* (str.to.re "66"))) (re.++ (re.+ (re.* (str.to.re "77"))) (re.++ (re.+ (re.union (str.to.re "88") (str.to.re "999"))) (re.++ (re.union (re.* (str.to.re "aaa")) (re.* (str.to.re "bb"))) (re.++ (re.+ (re.+ (str.to.re "c"))) (re.++ (re.+ (re.union (str.to.re "dd") (str.to.re "e"))) (re.+ (re.* (str.to.re "f"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
