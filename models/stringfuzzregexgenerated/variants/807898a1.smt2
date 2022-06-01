(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "0"))) (re.++ (re.* (re.+ (str.to_re "1"))) (re.++ (re.+ (re.+ (str.to_re "222"))) (re.++ (re.union (re.union (str.to_re "3") (str.to_re "44")) (re.+ (str.to_re "5"))) (re.++ (re.+ (re.union (str.to_re "6") (str.to_re "777"))) (re.++ (re.union (re.+ (str.to_re "888")) (re.* (str.to_re "99"))) (re.++ (re.* (re.union (str.to_re "aaa") (str.to_re "bb"))) (re.++ (re.* (re.union (str.to_re "ccc") (str.to_re "d"))) (re.++ (re.* (re.+ (str.to_re "ee"))) (re.union (re.+ (re.* (re.* (re.+ re.allchar)))) (re.* (str.to_re "g"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
