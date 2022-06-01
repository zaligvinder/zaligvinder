(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "0") (str.to_re "1"))) (re.++ (re.* (re.* (str.to_re "22"))) (re.++ (re.union (re.+ (str.to_re "3")) (re.+ (str.to_re "4"))) (re.++ (re.* (re.* (str.to_re "555"))) (re.++ (re.union (re.union (str.to_re "6") (str.to_re "777")) (re.union (str.to_re "888") (str.to_re "9"))) (re.++ (re.* (re.+ (str.to_re "a"))) (re.++ (re.* (re.union (str.to_re "bbb") (str.to_re "ccc"))) (re.++ (re.+ (re.+ (str.to_re "d"))) (re.++ (re.union (re.* (str.to_re "e")) (re.+ (str.to_re "f"))) (re.* (re.union (str.to_re "ggg") (re.++ (re.++ (str.to_re "") (str.to_re "")) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
