(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.union (re.union (str.to_re "1") (str.to_re "2")) (re.+ (str.to_re "3"))) (re.++ (re.* (re.union (str.to_re "444") (str.to_re "5"))) (re.++ (re.+ (re.union (str.to_re "66") (str.to_re "7"))) (re.++ (re.+ (re.+ (str.to_re "888"))) (re.++ (re.union (re.union (str.to_re "99") (str.to_re "aa")) (re.* (str.to_re "bbb"))) (re.++ (re.+ (re.+ (str.to_re "ccc"))) (re.++ (re.* (re.union (str.to_re "dd") (str.to_re "e"))) (re.++ (re.+ (re.+ (str.to_re "ff"))) (re.union (re.* (str.to_re "g")) (re.* (re.++ (re.++ (str.to_re "") (str.to_re "")) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
