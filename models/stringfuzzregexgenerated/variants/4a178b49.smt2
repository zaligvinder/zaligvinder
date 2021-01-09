(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.union (re.union (str.to.re "11") (str.to.re "22")) (re.+ (str.to.re "333"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.union (re.union (str.to.re "6") (str.to.re "7")) (re.+ (str.to.re "8"))) (re.++ (re.* (re.* (str.to.re "999"))) (re.++ (re.* (re.+ (str.to.re "aa"))) (re.++ (re.+ (re.+ (str.to.re "b"))) (re.++ (re.union (re.union (str.to.re "cc") (str.to.re "dd")) (re.+ (str.to.re "e"))) (re.+ (re.++ (str.to.re "f") (str.to.re "f"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
