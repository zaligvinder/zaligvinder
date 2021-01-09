(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.* (re.union (str.to.re "11") (str.to.re "22"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "44"))) (re.++ (re.* (re.+ (str.to.re "5"))) (re.++ (re.* (re.union (str.to.re "66") (str.to.re "777"))) (re.++ (re.+ (re.+ (str.to.re "8"))) (re.++ (re.union (re.+ (str.to.re "9")) (re.* (str.to.re "a"))) (re.++ (re.* (re.+ (str.to.re "bb"))) (re.++ (re.* (re.union (str.to.re "cc") (str.to.re "d"))) (re.+ (re.+ (str.to.re "e"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
