(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.+ (re.union (str.to.re "1") (str.to.re "22"))) (re.++ (re.* (re.* (str.to.re "333"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.union (re.* (str.to.re "555")) (re.+ (str.to.re "666"))) (re.++ (re.union (re.+ (str.to.re "777")) (re.* (str.to.re "888"))) (re.++ (re.* (re.* (str.to.re "99"))) (re.union (re.+ (str.to.re "aa")) (re.* (str.to.re "bb"))))))))))))
(check-sat)