(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "222")) (re.* (str.to.re "3"))) (re.union (re.union (str.to.re "44") (str.to.re "55")) (re.+ (str.to.re "666")))))))
(check-sat)