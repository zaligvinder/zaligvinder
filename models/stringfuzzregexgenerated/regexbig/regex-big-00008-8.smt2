(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.* (re.+ (str.to.re "11"))) (re.++ (re.union (re.union (str.to.re "222") (str.to.re "3")) (re.+ (str.to.re "4"))) (re.++ (re.* (re.+ (str.to.re "55"))) (re.++ (re.+ (re.+ (str.to.re "666"))) (re.++ (re.union (re.union (str.to.re "777") (str.to.re "8")) (re.+ (str.to.re "9"))) (re.++ (re.* (re.* (str.to.re "a"))) (re.+ (re.union (str.to.re "bb") (str.to.re "c"))))))))))))
(check-sat)