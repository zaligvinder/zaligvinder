(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.+ (str.to.re "1"))) (re.++ (re.union (re.union (str.to.re "222") (str.to.re "3")) (re.* (str.to.re "44"))) (re.++ (re.* (re.* (str.to.re "55"))) (re.++ (re.* (re.+ (str.to.re "666"))) (re.++ (re.+ (re.* (str.to.re "7"))) (re.++ (re.* (re.+ (str.to.re "8"))) (re.++ (re.union (re.+ (str.to.re "999")) (re.union (str.to.re "aa") (str.to.re "bb"))) (re.++ (re.* (re.union (str.to.re "c") (str.to.re "d"))) (re.++ (re.* (re.union (str.to.re "e") (str.to.re "ff"))) (re.* (re.union (str.to.re "gg") (re.* (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 126 (str.len var0)))
(check-sat)
