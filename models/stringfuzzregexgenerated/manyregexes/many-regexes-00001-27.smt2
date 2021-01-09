(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "000"))) (re.++ (re.+ (re.* (str.to.re "1"))) (re.++ (re.+ (re.+ (str.to.re "222"))) (re.++ (re.+ (re.* (str.to.re "333"))) (re.++ (re.* (re.union (str.to.re "4") (str.to.re "555"))) (re.++ (re.union (re.union (str.to.re "666") (str.to.re "777")) (re.+ (str.to.re "8"))) (re.++ (re.* (re.union (str.to.re "999") (str.to.re "aaa"))) (re.++ (re.+ (re.+ (str.to.re "bb"))) (re.++ (re.union (re.+ (str.to.re "c")) (re.* (str.to.re "ddd"))) (re.* (re.* (str.to.re "ee"))))))))))))))
(check-sat)