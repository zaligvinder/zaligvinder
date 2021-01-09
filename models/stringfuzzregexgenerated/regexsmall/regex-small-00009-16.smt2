(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.+ (str.to.re "111"))) (re.++ (re.* (re.* (str.to.re "222"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "4")) (re.* (str.to.re "55"))) (re.++ (re.union (re.+ (str.to.re "6")) (re.+ (str.to.re "777"))) (re.++ (re.+ (re.+ (str.to.re "8"))) (re.++ (re.+ (re.+ (str.to.re "9"))) (re.++ (re.* (re.+ (str.to.re "a"))) (re.++ (re.+ (re.+ (str.to.re "bbb"))) (re.+ (re.* (str.to.re "ccc")))))))))))))
(check-sat)