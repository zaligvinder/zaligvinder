(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "000"))) (re.++ (re.+ (re.+ (str.to.re "1"))) (re.++ (re.+ (re.* (str.to.re "2"))) (re.++ (re.+ (re.union (str.to.re "33") (str.to.re "4"))) (re.++ (re.* (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.+ (re.* (str.to.re "77"))) (re.union (re.union (str.to.re "8") (str.to.re "99")) (re.* (str.to.re "aa")))))))))))
(check-sat)