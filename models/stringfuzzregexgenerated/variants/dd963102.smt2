(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "111"))) (re.++ (re.+ (re.* (str.to.re "222"))) (re.++ (re.+ (re.+ (str.to.re "333"))) (re.++ (re.+ (re.union (str.to.re "44") (str.to.re "555"))) (re.++ (re.union (re.union (str.to.re "66") (str.to.re "77")) (re.* (str.to.re "888"))) (re.++ (re.+ (re.union (str.to.re "9") (str.to.re "aaa"))) (re.++ (re.+ (re.* (str.to.re "bb"))) (re.++ (re.+ (re.* (str.to.re "ccc"))) (re.++ (re.+ (re.* (str.to.re "dd"))) (re.+ (re.+ (str.to.re "ee"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
