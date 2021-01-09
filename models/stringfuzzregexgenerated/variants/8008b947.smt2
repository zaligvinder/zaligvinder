(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.+ (re.* (str.to.re "2"))) (re.++ (re.+ (re.+ (str.to.re "33"))) (re.++ (re.+ (re.union (str.to.re "444") (str.to.re "55"))) (re.++ (re.union (re.+ (str.to.re "6")) (re.+ (str.to.re "7"))) (re.++ (re.* (re.union (str.to.re "8") (str.to.re "9"))) (re.++ (re.* (re.union (str.to.re "aaa") (str.to.re "bb"))) (re.++ (re.union (re.union (str.to.re "cc") (str.to.re "d")) (re.* (str.to.re "eee"))) (re.++ (re.+ (re.* (str.to.re "fff"))) (re.* (re.+ (str.to.re "h"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
