(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.+ (re.* (str.to_re "2"))) (re.++ (re.+ (re.+ (str.to_re "33"))) (re.++ (re.+ (re.union (str.to_re "444") (str.to_re "55"))) (re.++ (re.union (re.+ (str.to_re "6")) (re.+ (str.to_re "7"))) (re.++ (re.* (re.union (str.to_re "8") (str.to_re "9"))) (re.++ (re.* (re.union (str.to_re "aaa") (str.to_re "bb"))) (re.++ (re.union (re.union (str.to_re "cc") (str.to_re "d")) (re.* (str.to_re "eee"))) (re.++ (re.+ (re.union (str.to_re "fff") (str.to_re "gg"))) (re.+ (re.+ (str.to_re "h"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
