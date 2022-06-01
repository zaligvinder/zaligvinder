(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "00"))) (re.++ (re.union (re.+ (str.to_re "1")) (re.* (str.to_re "2"))) (re.++ (re.* (re.* (str.to_re "333"))) (re.++ (re.+ (re.union (str.to_re "44") (str.to_re "55"))) (re.++ (re.union (re.+ (str.to_re "6")) (re.+ (str.to_re "77"))) (re.++ (re.+ (re.union (str.to_re "888") (str.to_re "9"))) (re.++ (re.+ (re.* (str.to_re "a"))) (re.++ (re.* (re.+ (str.to_re "bb"))) (re.++ (re.* (re.union (str.to_re "c") (str.to_re "ddd"))) (re.union (re.union (str.to_re "e") (re.* (re.* (re.+ re.allchar)))) (re.* (str.to_re "gg"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
