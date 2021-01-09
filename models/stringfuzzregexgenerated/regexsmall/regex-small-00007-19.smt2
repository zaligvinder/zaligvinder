(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.* (str.to.re "111"))) (re.++ (re.* (re.+ (str.to.re "222"))) (re.++ (re.union (re.* (str.to.re "333")) (re.+ (str.to.re "444"))) (re.++ (re.+ (re.+ (str.to.re "55"))) (re.++ (re.union (re.* (str.to.re "6")) (re.* (str.to.re "777"))) (re.++ (re.union (re.+ (str.to.re "888")) (re.union (str.to.re "99") (str.to.re "aa"))) (re.+ (re.* (str.to.re "bbb")))))))))))
(check-sat)