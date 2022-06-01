(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "0"))) (re.++ (re.+ (re.union (str.to_re "1") (str.to_re "222"))) (re.++ (re.* (re.+ (str.to_re "333"))) (re.++ (re.union (re.union (str.to_re "44") (str.to_re "5")) (re.* (str.to_re "6"))) (re.++ (re.+ (re.+ (str.to_re "7"))) (re.++ (re.+ (re.+ (str.to_re "888"))) (re.++ (re.union (re.+ (str.to_re "99")) (re.+ (str.to_re "aaa"))) (re.++ (re.* (re.+ (str.to_re "bb"))) (re.++ (re.* (re.* (str.to_re "c"))) (re.union (re.union (str.to_re "dd") (str.to_re "eee")) (re.+ (str.to_re "ff"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
