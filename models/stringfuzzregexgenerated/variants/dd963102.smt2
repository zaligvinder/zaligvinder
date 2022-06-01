(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "111"))) (re.++ (re.+ (re.* (str.to_re "222"))) (re.++ (re.+ (re.+ (str.to_re "333"))) (re.++ (re.+ (re.union (str.to_re "44") (str.to_re "555"))) (re.++ (re.union (re.union (str.to_re "66") (str.to_re "77")) (re.* (str.to_re "888"))) (re.++ (re.+ (re.union (str.to_re "9") (str.to_re "aaa"))) (re.++ (re.+ (re.* (str.to_re "bb"))) (re.++ (re.+ (re.* (str.to_re "ccc"))) (re.++ (re.+ (re.* (str.to_re "dd"))) (re.+ (re.+ (str.to_re "ee"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
