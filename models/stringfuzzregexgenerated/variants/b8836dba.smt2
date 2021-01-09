(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "1"))) (re.++ (re.+ (re.+ (str.to.re "2"))) (re.++ (re.union (re.+ (str.to.re "33")) (re.union (str.to.re "4") (str.to.re "55"))) (re.++ (re.union (re.+ (str.to.re "6")) (re.* (str.to.re "77"))) (re.++ (re.* (re.union (str.to.re "888") (str.to.re "999"))) (re.++ (re.* (re.union (str.to.re "a") (str.to.re "bbb"))) (re.++ (re.* (re.union (str.to.re "ccc") (str.to.re "dd"))) (re.++ (re.* (re.union (str.to.re "e") (str.to.re "f"))) (re.* (re.++ (str.to.re "gg") (str.to.re "gg"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
