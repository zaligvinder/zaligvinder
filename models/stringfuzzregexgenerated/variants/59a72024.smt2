(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.* (re.* (str.to.re "22"))) (re.++ (re.union (re.+ (str.to.re "3")) (re.+ (str.to.re "4"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.union (re.union (str.to.re "6") (str.to.re "777")) (re.union (str.to.re "888") (str.to.re "9"))) (re.++ (re.* (re.+ (str.to.re "a"))) (re.++ (re.* (re.union (str.to.re "bbb") (str.to.re "ccc"))) (re.++ (re.+ (re.+ (str.to.re "d"))) (re.++ (re.union (re.* (str.to.re "e")) (re.+ (str.to.re "f"))) (re.* (re.union (str.to.re "ggg") (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
