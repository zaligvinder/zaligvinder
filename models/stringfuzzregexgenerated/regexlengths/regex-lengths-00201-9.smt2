(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "000")) (re.union (str.to.re "111") (str.to.re "222"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "44")) (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.* (re.+ (str.to.re "777"))) (re.++ (re.union (re.+ (str.to.re "88")) (re.* (str.to.re "999"))) (re.++ (re.union (re.union (str.to.re "a") (str.to.re "b")) (re.+ (str.to.re "ccc"))) (re.++ (re.+ (re.+ (str.to.re "dd"))) (re.++ (re.* (re.* (str.to.re "ee"))) (re.++ (re.union (re.* (str.to.re "fff")) (re.union (str.to.re "gg") (str.to.re "hhh"))) (re.++ (re.union (re.* (str.to.re "ii")) (re.union (str.to.re "jj") (str.to.re "kkk"))) (re.+ (re.* (str.to.re "l"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)