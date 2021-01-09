(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.+ (str.to.re "11"))) (re.++ (re.* (re.union (str.to.re "222") (str.to.re "3"))) (re.++ (re.+ (re.+ (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "5"))) (re.++ (re.union (re.+ (str.to.re "666")) (re.union (str.to.re "777") (str.to.re "888"))) (re.++ (re.+ (re.union (str.to.re "9") (str.to.re "a"))) (re.++ (re.* (re.+ (str.to.re "bbb"))) (re.++ (re.+ (re.union (str.to.re "c") (str.to.re "d"))) (re.++ (re.+ (re.* (str.to.re "eee"))) (re.union (re.+ (str.to.re "ff")) (re.union (str.to.re "gg") (re.++ (re.++ (str.to.re "") (str.to.re "")) (re.* (re.* (re.* re.allchar)))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
