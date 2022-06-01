(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "000") (str.to_re "1")) (re.+ (str.to_re "22"))) (re.++ (re.* (re.* (str.to_re "33"))) (re.++ (re.* (re.* (str.to_re "44"))) (re.++ (re.+ (re.* (str.to_re "5"))) (re.++ (re.union (re.* (str.to_re "6")) (re.+ (str.to_re "77"))) (re.++ (re.+ (re.* (str.to_re "8"))) (re.++ (re.* (re.+ (str.to_re "9"))) (re.++ (re.+ (re.union (str.to_re "aaa") (str.to_re "bb"))) (re.++ (re.+ (re.union (str.to_re "cc") (str.to_re "ddd"))) (re.union (re.union (str.to_re "ee") (re.++ (re.* (re.+ re.allchar)) (re.* (re.* re.allchar)))) (re.+ (str.to_re "g"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
