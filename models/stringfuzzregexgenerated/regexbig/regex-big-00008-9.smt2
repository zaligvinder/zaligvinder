(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "000"))) (re.++ (re.union (re.* (str.to.re "111")) (re.* (str.to.re "222"))) (re.++ (re.* (re.union (str.to.re "333") (str.to.re "44"))) (re.++ (re.* (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.* (re.* (str.to.re "777"))) (re.++ (re.union (re.union (str.to.re "8") (str.to.re "9")) (re.+ (str.to.re "aa"))) (re.++ (re.+ (re.* (str.to.re "bbb"))) (re.union (re.* (str.to.re "c")) (re.union (str.to.re "d") (str.to.re "ee"))))))))))))
(check-sat)