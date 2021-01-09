(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "0"))) (re.++ (re.+ (re.* (str.to.re "1"))) (re.++ (re.* (re.union (str.to.re "22") (str.to.re "3"))) (re.++ (re.+ (re.union (str.to.re "444") (str.to.re "5"))) (re.++ (re.* (re.+ (str.to.re "666"))) (re.++ (re.union (re.+ (str.to.re "777")) (re.union (str.to.re "8") (str.to.re "99"))) (re.++ (re.+ (re.+ (str.to.re "aaa"))) (re.union (re.union (str.to.re "b") (str.to.re "cc")) (re.* (str.to.re "d"))))))))))))
(check-sat)