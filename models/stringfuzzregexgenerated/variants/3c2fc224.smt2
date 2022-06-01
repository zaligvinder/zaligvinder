(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "0"))) (re.++ (re.+ (re.* (str.to_re "1"))) (re.++ (re.* (re.* (str.to_re "22"))) (re.++ (re.+ (re.+ (str.to_re "33"))) (re.++ (re.* (re.union (str.to_re "444") (str.to_re "5"))) (re.++ (re.union (re.union (str.to_re "66") (str.to_re "777")) (re.* (str.to_re "8"))) (re.++ (re.union (re.+ (str.to_re "9")) (re.+ (str.to_re "a"))) (re.++ (re.union (re.union (str.to_re "bbb") (str.to_re "c")) (re.+ (str.to_re "d"))) (re.++ (re.* (re.+ (str.to_re "e"))) (re.union (re.+ (str.to_re "f")) (re.* (re.++ (re.++ (str.to_re "") (str.to_re "")) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
