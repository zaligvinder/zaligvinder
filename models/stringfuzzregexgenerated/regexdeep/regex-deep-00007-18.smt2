(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (re.* (re.* (re.union (re.* (re.* (str.to.re "00"))) (re.union (re.+ (str.to.re "11")) (re.* (str.to.re "2")))))) (re.* (re.* (re.+ (re.* (re.union (str.to.re "3") (str.to.re "44")))))))) (re.+ (re.* (re.+ (re.union (re.+ (re.* (re.+ (str.to.re "5")))) (re.* (re.* (re.* (str.to.re "666")))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)