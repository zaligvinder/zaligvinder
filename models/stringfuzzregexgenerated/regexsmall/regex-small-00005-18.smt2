(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "2")) (re.* (str.to.re "33"))) (re.++ (re.* (re.+ (str.to.re "4"))) (re.++ (re.* (re.+ (str.to.re "5"))) (re.+ (re.* (str.to.re "666")))))))))
(check-sat)