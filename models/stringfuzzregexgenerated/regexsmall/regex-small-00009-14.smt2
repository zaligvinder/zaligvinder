(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.+ (re.union (str.to.re "1") (str.to.re "222"))) (re.++ (re.+ (re.* (str.to.re "3"))) (re.++ (re.union (re.* (str.to.re "44")) (re.* (str.to.re "555"))) (re.++ (re.* (re.* (str.to.re "6"))) (re.++ (re.union (re.union (str.to.re "777") (str.to.re "8")) (re.* (str.to.re "99"))) (re.++ (re.+ (re.union (str.to.re "aa") (str.to.re "bbb"))) (re.++ (re.* (re.* (str.to.re "c"))) (re.+ (re.+ (str.to.re "ddd")))))))))))))
(check-sat)