(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.* (re.union (str.to.re "222") (str.to.re "333"))) (re.++ (re.+ (re.* (str.to.re "44"))) (re.++ (re.+ (re.* (str.to.re "555"))) (re.++ (re.+ (re.* (str.to.re "6"))) (re.++ (re.union (re.* (str.to.re "77")) (re.* (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "999"))) (re.++ (re.union (re.+ (str.to.re "a")) (re.+ (str.to.re "bb"))) (re.++ (re.union (re.+ (str.to.re "ccc")) (re.+ (str.to.re "ddd"))) (re.+ (re.* (re.+ (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
