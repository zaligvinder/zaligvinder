(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.* (str.to.re "1"))) (re.++ (re.* (re.* (str.to.re "22"))) (re.++ (re.+ (re.union (str.to.re "33") (str.to.re "444"))) (re.++ (re.union (re.+ (str.to.re "55")) (re.union (str.to.re "666") (str.to.re "7"))) (re.+ (re.* (str.to.re "88")))))))))
(check-sat)