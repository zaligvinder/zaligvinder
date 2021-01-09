(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "00"))) (re.++ (re.union (re.* (str.to.re "11")) (re.+ (str.to.re "22"))) (re.++ (re.+ (re.+ (str.to.re "3"))) (re.++ (re.* (re.union (str.to.re "444") (str.to.re "5"))) (re.union (re.union (str.to.re "666") (str.to.re "77")) (re.* (str.to.re "8")))))))))
(check-sat)