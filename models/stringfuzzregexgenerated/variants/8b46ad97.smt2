(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.* (str.to.re "111"))) (re.++ (re.union (re.+ (str.to.re "222")) (re.union (str.to.re "333") (str.to.re "4"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "66"))) (re.++ (re.+ (re.union (str.to.re "7") (str.to.re "888"))) (re.++ (re.+ (re.+ (str.to.re "999"))) (re.++ (re.+ (re.+ (str.to.re "aa"))) (re.++ (re.+ (re.+ (str.to.re "b"))) (re.++ (re.+ (re.union (str.to.re "ccc") (str.to.re "d"))) (re.++ (re.* (re.+ (str.to.re "ee"))) (re.* (re.* (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
