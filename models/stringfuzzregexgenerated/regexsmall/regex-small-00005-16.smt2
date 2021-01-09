(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "11")) (re.union (str.to.re "2") (str.to.re "333"))) (re.++ (re.* (re.+ (str.to.re "444"))) (re.++ (re.union (re.+ (str.to.re "55")) (re.* (str.to.re "666"))) (re.++ (re.* (re.* (str.to.re "777"))) (re.+ (re.+ (str.to.re "88")))))))))
(check-sat)