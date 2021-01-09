(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.* (str.to.re "111"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.* (str.to.re "3"))) (re.++ (re.union (re.+ (str.to.re "44")) (re.* (str.to.re "5"))) (re.++ (re.* (re.+ (str.to.re "66"))) (re.union (re.* (str.to.re "77")) (re.union (str.to.re "888") (str.to.re "999")))))))))
(check-sat)