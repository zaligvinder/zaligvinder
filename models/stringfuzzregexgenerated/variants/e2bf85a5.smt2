(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.+ (re.+ (str.to.re "111"))) (re.++ (re.* (re.* (str.to.re "22"))) (re.++ (re.union (re.union (str.to.re "333") (str.to.re "44")) (re.* (str.to.re "555"))) (re.++ (re.+ (re.union (str.to.re "6") (str.to.re "777"))) (re.++ (re.+ (re.* (str.to.re "88"))) (re.++ (re.union (re.union (str.to.re "999") (str.to.re "a")) (re.+ (str.to.re "b"))) (re.++ (re.* (re.+ (str.to.re "cc"))) (re.++ (re.union (re.union (str.to.re "dd") (str.to.re "ee")) (re.+ (str.to.re "ff"))) (re.* (re.union (str.to.re "gg") (re.* (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
