(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.* (str.to.re "1"))) (re.++ (re.union (re.+ (str.to.re "2")) (re.* (str.to.re "333"))) (re.++ (re.* (re.+ (str.to.re "4"))) (re.++ (re.+ (re.+ (str.to.re "555"))) (re.++ (re.* (re.union (str.to.re "666") (str.to.re "777"))) (re.++ (re.+ (re.* (str.to.re "88"))) (re.++ (re.+ (re.* (str.to.re "99"))) (re.++ (re.+ (re.+ (str.to.re "aa"))) (re.++ (re.+ (re.* (str.to.re "bbb"))) (re.* (re.union (str.to.re "ccc") (str.to.re "d"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)