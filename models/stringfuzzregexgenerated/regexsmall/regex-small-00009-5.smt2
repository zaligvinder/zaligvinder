(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "000")) (re.union (str.to.re "1") (str.to.re "2"))) (re.++ (re.+ (re.+ (str.to.re "33"))) (re.++ (re.+ (re.+ (str.to.re "444"))) (re.++ (re.union (re.+ (str.to.re "55")) (re.* (str.to.re "66"))) (re.++ (re.union (re.* (str.to.re "7")) (re.+ (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "9"))) (re.++ (re.union (re.+ (str.to.re "aaa")) (re.+ (str.to.re "bbb"))) (re.++ (re.* (re.union (str.to.re "ccc") (str.to.re "d"))) (re.+ (re.+ (str.to.re "eee")))))))))))))
(check-sat)