(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "111"))) (re.++ (re.* (re.* (str.to.re "2"))) (re.++ (re.union (re.+ (str.to.re "3")) (re.union (str.to.re "4") (str.to.re "5"))) (re.++ (re.* (re.union (str.to.re "66") (str.to.re "77"))) (re.++ (re.* (re.union (str.to.re "888") (str.to.re "99"))) (re.++ (re.* (re.union (str.to.re "aaa") (str.to.re "bb"))) (re.++ (re.+ (re.union (str.to.re "ccc") (str.to.re "d"))) (re.++ (re.+ (re.+ (str.to.re "eee"))) (re.++ (re.+ (re.+ (str.to.re "ff"))) (re.* (re.* (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
