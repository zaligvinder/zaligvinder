(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "000"))) (re.++ (re.* (re.union (str.to.re "11") (str.to.re "22"))) (re.++ (re.* (re.+ (str.to.re "33"))) (re.++ (re.* (re.* (str.to.re "4"))) (re.++ (re.+ (re.* (str.to.re "55"))) (re.++ (re.* (re.* (str.to.re "666"))) (re.union (re.+ (str.to.re "7")) (re.union (str.to.re "8") (str.to.re "99")))))))))))
(check-sat)