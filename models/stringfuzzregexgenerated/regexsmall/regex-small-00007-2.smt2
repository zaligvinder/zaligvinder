(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "0"))) (re.++ (re.* (re.union (str.to.re "11") (str.to.re "2"))) (re.++ (re.+ (re.* (str.to.re "333"))) (re.++ (re.* (re.union (str.to.re "4") (str.to.re "5"))) (re.++ (re.union (re.+ (str.to.re "66")) (re.union (str.to.re "77") (str.to.re "8"))) (re.++ (re.+ (re.+ (str.to.re "999"))) (re.* (re.+ (str.to.re "aaa")))))))))))
(check-sat)