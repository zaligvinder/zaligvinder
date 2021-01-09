(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.union (re.+ (str.to.re "1")) (re.union (str.to.re "2") (str.to.re "3"))) (re.++ (re.union (re.+ (str.to.re "44")) (re.+ (str.to.re "55"))) (re.++ (re.union (re.* (str.to.re "66")) (re.* (str.to.re "7"))) (re.++ (re.* (re.* (str.to.re "88"))) (re.++ (re.* (re.+ (str.to.re "999"))) (re.union (re.+ (str.to.re "a")) (re.union (str.to.re "bbb") (str.to.re "cc")))))))))))
(check-sat)