(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.union (re.* (str.to.re "1")) (re.+ (str.to.re "222"))) (re.++ (re.* (re.* (str.to.re "33"))) (re.++ (re.+ (re.* (str.to.re "4"))) (re.++ (re.+ (re.* (str.to.re "55"))) (re.++ (re.union (re.union (str.to.re "666") (str.to.re "777")) (re.* (str.to.re "88"))) (re.++ (re.+ (re.* (str.to.re "999"))) (re.++ (re.union (re.union (str.to.re "aa") (str.to.re "bbb")) (re.+ (str.to.re "c"))) (re.++ (re.* (re.union (str.to.re "d") (str.to.re "ee"))) (re.* (re.* (str.to.re "ff"))))))))))))))
(assert (<= 101 (str.len var0)))
(check-sat)