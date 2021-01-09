(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "000"))) (re.++ (re.+ (re.+ (str.to.re "1"))) (re.++ (re.* (re.union (str.to.re "22") (str.to.re "3"))) (re.++ (re.* (re.+ (str.to.re "444"))) (re.union (re.+ (str.to.re "555")) (re.+ (str.to.re "666")))))))))
(check-sat)