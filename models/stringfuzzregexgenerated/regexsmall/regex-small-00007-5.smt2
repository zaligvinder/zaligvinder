(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.union (re.+ (str.to.re "111")) (re.* (str.to.re "222"))) (re.++ (re.* (re.union (str.to.re "33") (str.to.re "44"))) (re.++ (re.* (re.+ (str.to.re "555"))) (re.++ (re.+ (re.+ (str.to.re "666"))) (re.++ (re.* (re.* (str.to.re "777"))) (re.* (re.union (str.to.re "88") (str.to.re "9")))))))))))
(check-sat)