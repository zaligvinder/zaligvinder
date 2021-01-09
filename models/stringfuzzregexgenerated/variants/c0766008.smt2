(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.union (re.* (str.to.re "11")) (re.+ (str.to.re "22"))) (re.++ (re.union (re.* (str.to.re "33")) (re.+ (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "5"))) (re.++ (re.union (re.* (str.to.re "6")) (re.union (str.to.re "7") (str.to.re "8"))) (re.++ (re.union (re.* (str.to.re "999")) (re.+ (str.to.re "a"))) (re.++ (re.+ (re.+ (str.to.re "b"))) (re.++ (re.+ (re.* (str.to.re "c"))) (re.++ (re.* (re.+ (str.to.re "dd"))) (re.union (re.+ (str.to.re "e")) (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
