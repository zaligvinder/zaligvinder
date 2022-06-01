(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "0")) (re.+ (str.to_re "1"))) (re.++ (re.* (re.union (str.to_re "222") (str.to_re "333"))) (re.++ (re.* (re.* (str.to_re "444"))) (re.++ (re.* (re.+ (str.to_re "555"))) (re.++ (re.union (re.+ (str.to_re "6")) (re.union (str.to_re "777") (str.to_re "8"))) (re.++ (re.union (re.* (str.to_re "999")) (re.union (str.to_re "a") (str.to_re "b"))) (re.++ (re.union (re.+ (str.to_re "cc")) (re.union (str.to_re "d") (str.to_re "ee"))) (re.++ (re.* (re.* (str.to_re "f"))) (re.++ (re.* (re.union (str.to_re "ggg") (str.to_re "hh"))) (re.* (re.union (re.+ (re.* (re.* (re.* re.allchar)))) (str.to_re "jjj"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
