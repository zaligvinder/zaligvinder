(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.+ (re.* (str.to.re "1"))) (re.++ (re.* (re.* (str.to.re "22"))) (re.++ (re.+ (re.+ (str.to.re "33"))) (re.++ (re.* (re.union (str.to.re "444") (str.to.re "5"))) (re.++ (re.union (re.union (str.to.re "66") (str.to.re "777")) (re.* (str.to.re "8"))) (re.++ (re.union (re.+ (str.to.re "9")) (re.+ (str.to.re "a"))) (re.++ (re.union (re.union (str.to.re "bbb") (str.to.re "c")) (re.+ (str.to.re "d"))) (re.++ (re.* (re.+ (str.to.re "e"))) (re.union (re.+ (str.to.re "f")) (re.* (re.++ (re.++ (str.to.re "") (str.to.re "")) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
