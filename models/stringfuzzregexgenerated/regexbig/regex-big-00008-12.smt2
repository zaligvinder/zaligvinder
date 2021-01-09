(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "1"))) (re.++ (re.+ (re.* (str.to.re "2"))) (re.++ (re.+ (re.+ (str.to.re "333"))) (re.++ (re.* (re.+ (str.to.re "4"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.+ (re.+ (str.to.re "7"))) (re.++ (re.union (re.union (str.to.re "8") (str.to.re "999")) (re.union (str.to.re "aaa") (str.to.re "bbb"))) (re.* (re.union (str.to.re "cc") (str.to.re "dd"))))))))))))
(check-sat)