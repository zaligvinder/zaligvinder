(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.+ (re.union (str.to.re "11") (str.to.re "222"))) (re.++ (re.* (re.* (str.to.re "333"))) (re.++ (re.* (re.+ (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.* (re.+ (str.to.re "6"))) (re.++ (re.* (re.+ (str.to.re "77"))) (re.* (re.union (str.to.re "888") (str.to.re "99"))))))))))))
(check-sat)