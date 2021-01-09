(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "00")) (re.+ (str.to.re "111"))) (re.++ (re.union (re.union (str.to.re "222") (str.to.re "3")) (re.* (str.to.re "444"))) (re.++ (re.union (re.* (str.to.re "55")) (re.union (str.to.re "66") (str.to.re "777"))) (re.++ (re.union (re.+ (str.to.re "888")) (re.union (str.to.re "9") (str.to.re "aaa"))) (re.++ (re.* (re.+ (str.to.re "bbb"))) (re.++ (re.+ (re.* (str.to.re "cc"))) (re.++ (re.union (re.+ (str.to.re "ddd")) (re.* (str.to.re "ee"))) (re.++ (re.union (re.* (str.to.re "ff")) (re.* (str.to.re "gg"))) (re.++ (re.+ (re.union (str.to.re "hhh") (str.to.re "iii"))) (re.* (re.+ (re.++ (re.* re.allchar) (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
