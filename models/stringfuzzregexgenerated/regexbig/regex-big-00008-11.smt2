(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.* (re.+ (str.to.re "11"))) (re.++ (re.* (re.* (str.to.re "22"))) (re.++ (re.* (re.+ (str.to.re "3"))) (re.++ (re.* (re.union (str.to.re "444") (str.to.re "555"))) (re.++ (re.+ (re.* (str.to.re "66"))) (re.++ (re.+ (re.+ (str.to.re "777"))) (re.* (re.union (str.to.re "888") (str.to.re "99"))))))))))))
(check-sat)