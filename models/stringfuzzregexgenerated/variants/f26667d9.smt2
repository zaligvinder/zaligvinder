(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "0"))) (re.++ (re.union (re.+ (str.to.re "11")) (re.union (str.to.re "22") (str.to.re "333"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.+ (re.* (str.to.re "5"))) (re.++ (re.union (re.+ (str.to.re "6")) (re.+ (str.to.re "77"))) (re.++ (re.* (re.* (str.to.re "88"))) (re.++ (re.+ (re.* (str.to.re "999"))) (re.++ (re.* (re.+ (str.to.re "aaa"))) (re.++ (re.union (re.* (str.to.re "bbb")) (re.* (str.to.re "cc"))) (re.+ (re.+ (str.to.re "ddd"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
