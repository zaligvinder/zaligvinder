(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "00"))) (re.++ (re.+ (re.+ (str.to.re "111"))) (re.++ (re.* (re.union (str.to.re "222") (str.to.re "3"))) (re.++ (re.union (re.* (str.to.re "44")) (re.+ (str.to.re "555"))) (re.++ (re.union (re.+ (str.to.re "66")) (re.+ (str.to.re "7"))) (re.++ (re.* (re.+ (str.to.re "888"))) (re.++ (re.+ (re.+ (str.to.re "999"))) (re.++ (re.+ (re.union (str.to.re "aa") (str.to.re "b"))) (re.* (re.* (str.to.re "c")))))))))))))
(check-sat)