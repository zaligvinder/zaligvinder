(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "0"))) (re.++ (re.* (re.* (str.to.re "111"))) (re.++ (re.+ (re.+ (str.to.re "2"))) (re.++ (re.union (re.union (str.to.re "3") (str.to.re "444")) (re.* (str.to.re "555"))) (re.union (re.* (str.to.re "6")) (re.union (str.to.re "777") (str.to.re "888")))))))))
(check-sat)