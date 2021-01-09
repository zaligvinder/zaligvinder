(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.* (str.to.re "11"))) (re.++ (re.+ (re.+ (str.to.re "2"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "44"))) (re.++ (re.union (re.union (str.to.re "5") (str.to.re "66")) (re.union (str.to.re "777") (str.to.re "8"))) (re.++ (re.+ (re.+ (str.to.re "99"))) (re.++ (re.union (re.+ (str.to.re "a")) (re.* (str.to.re "bb"))) (re.++ (re.* (re.union (str.to.re "ccc") (str.to.re "ddd"))) (re.++ (re.* (re.union (str.to.re "eee") (str.to.re "f"))) (re.++ (re.+ (re.+ (str.to.re "gg"))) (re.union (re.union (str.to.re "h") (str.to.re "iii")) (re.* (str.to.re "jj"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
