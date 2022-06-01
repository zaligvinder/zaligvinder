(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "00")) (re.+ (str.to_re "111"))) (re.++ (re.union (re.union (str.to_re "222") (str.to_re "3")) (re.* (str.to_re "444"))) (re.++ (re.union (re.* (str.to_re "55")) (re.union (str.to_re "66") (str.to_re "777"))) (re.++ (re.union (re.+ (str.to_re "888")) (re.union (str.to_re "9") (str.to_re "aaa"))) (re.++ (re.* (re.+ (str.to_re "bbb"))) (re.++ (re.+ (re.* (str.to_re "cc"))) (re.++ (re.union (re.+ (str.to_re "ddd")) (re.* (str.to_re "ee"))) (re.++ (re.union (re.* (str.to_re "ff")) (re.* (str.to_re "gg"))) (re.++ (re.+ (re.union (str.to_re "hhh") (str.to_re "iii"))) (re.* (re.+ (re.+ (re.* re.allchar)))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
