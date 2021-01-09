(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.+ (str.to.re "1"))) (re.++ (re.* (re.union (str.to.re "222") (str.to.re "333"))) (re.++ (re.* (re.* (str.to.re "444"))) (re.++ (re.* (re.+ (str.to.re "555"))) (re.++ (re.union (re.+ (str.to.re "6")) (re.union (str.to.re "777") (str.to.re "8"))) (re.++ (re.union (re.* (str.to.re "999")) (re.union (str.to.re "a") (str.to.re "b"))) (re.++ (re.union (re.+ (str.to.re "cc")) (re.union (str.to.re "d") (str.to.re "ee"))) (re.++ (re.* (re.* (str.to.re "f"))) (re.++ (re.* (re.union (str.to.re "ggg") (str.to.re "hh"))) (re.* (re.union (re.+ (re.* (re.* (re.* re.allchar)))) (str.to.re "jjj"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
