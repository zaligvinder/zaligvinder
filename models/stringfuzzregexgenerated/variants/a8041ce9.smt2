(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "00"))) (re.++ (re.union (re.+ (str.to.re "1")) (re.* (str.to.re "2"))) (re.++ (re.* (re.* (str.to.re "333"))) (re.++ (re.+ (re.union (str.to.re "44") (str.to.re "55"))) (re.++ (re.union (re.+ (str.to.re "6")) (re.+ (str.to.re "77"))) (re.++ (re.+ (re.union (str.to.re "888") (str.to.re "9"))) (re.++ (re.+ (re.* (str.to.re "a"))) (re.++ (re.* (re.+ (str.to.re "bb"))) (re.++ (re.* (re.union (str.to.re "c") (str.to.re "ddd"))) (re.union (re.union (str.to.re "e") (re.* (re.* (re.+ re.allchar)))) (re.* (str.to.re "gg"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
