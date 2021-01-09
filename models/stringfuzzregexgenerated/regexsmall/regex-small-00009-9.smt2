(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "00"))) (re.++ (re.* (re.union (str.to.re "11") (str.to.re "2"))) (re.++ (re.+ (re.union (str.to.re "3") (str.to.re "44"))) (re.++ (re.* (re.* (str.to.re "5"))) (re.++ (re.union (re.* (str.to.re "666")) (re.+ (str.to.re "777"))) (re.++ (re.* (re.+ (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "99"))) (re.++ (re.+ (re.+ (str.to.re "aaa"))) (re.union (re.* (str.to.re "bbb")) (re.+ (str.to.re "c")))))))))))))
(check-sat)