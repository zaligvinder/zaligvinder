(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "000") (str.to.re "111"))) (re.++ (re.+ (re.+ (str.to.re "222"))) (re.++ (re.+ (re.union (str.to.re "33") (str.to.re "4"))) (re.++ (re.union (re.union (str.to.re "5") (str.to.re "6")) (re.+ (str.to.re "7"))) (re.++ (re.* (re.+ (str.to.re "8"))) (re.++ (re.* (re.union (str.to.re "999") (str.to.re "a"))) (re.++ (re.union (re.+ (str.to.re "bbb")) (re.union (str.to.re "cc") (str.to.re "ddd"))) (re.++ (re.+ (re.+ (str.to.re "ee"))) (re.++ (re.+ (re.* (str.to.re "f"))) (re.+ (re.* (str.to.re "g"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
