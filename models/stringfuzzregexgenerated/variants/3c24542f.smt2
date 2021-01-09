(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.+ (re.+ (str.to.re "1"))) (re.++ (re.union (re.* (str.to.re "222")) (re.* (str.to.re "333"))) (re.++ (re.+ (re.union (str.to.re "44") (str.to.re "5"))) (re.++ (re.* (re.* (str.to.re "666"))) (re.++ (re.* (re.* (str.to.re "777"))) (re.++ (re.+ (re.+ (str.to.re "888"))) (re.++ (re.+ (re.* (str.to.re "9"))) (re.++ (re.* (re.* (str.to.re "aaa"))) (re.+ (re.+ (str.to.re "bbb"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
