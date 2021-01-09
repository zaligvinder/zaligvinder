(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "111"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.* (str.to.re "333"))) (re.++ (re.union (re.union (str.to.re "4") (str.to.re "5")) (re.+ (str.to.re "6"))) (re.++ (re.+ (re.union (str.to.re "777") (str.to.re "88"))) (re.+ (re.+ (str.to.re "9")))))))))
(check-sat)