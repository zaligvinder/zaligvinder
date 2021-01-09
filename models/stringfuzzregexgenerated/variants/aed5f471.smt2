(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "000"))) (re.++ (re.union (re.+ (str.to.re "1")) (re.union (str.to.re "22") (str.to.re "33"))) (re.++ (re.+ (re.union (str.to.re "4") (str.to.re "55"))) (re.++ (re.union (re.* (str.to.re "66")) (re.+ (str.to.re "77"))) (re.++ (re.union (re.union (str.to.re "888") (str.to.re "999")) (re.union (str.to.re "aaa") (str.to.re "b"))) (re.++ (re.union (re.union (str.to.re "cc") (str.to.re "d")) (re.+ (str.to.re "e"))) (re.++ (re.union (re.+ (str.to.re "ff")) (re.+ (str.to.re "gg"))) (re.++ (re.+ (re.+ (str.to.re "hhh"))) (re.++ (re.* (re.* (str.to.re "ii"))) (re.* (re.union (str.to.re "j") (re.+ (re.* re.allchar)))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
