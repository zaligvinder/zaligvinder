(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.* (re.* (str.to.re "111"))) (re.++ (re.union (re.* (str.to.re "2")) (re.union (str.to.re "333") (str.to.re "4"))) (re.++ (re.+ (re.* (str.to.re "555"))) (re.++ (re.union (re.union (str.to.re "66") (str.to.re "7")) (re.* (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "9"))) (re.union (re.+ (str.to.re "aa")) (re.* (str.to.re "bb")))))))))))
(check-sat)