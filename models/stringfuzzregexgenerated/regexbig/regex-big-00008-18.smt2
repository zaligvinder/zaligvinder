(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "0"))) (re.++ (re.* (re.+ (str.to.re "111"))) (re.++ (re.* (re.+ (str.to.re "22"))) (re.++ (re.union (re.+ (str.to.re "3")) (re.+ (str.to.re "44"))) (re.++ (re.* (re.+ (str.to.re "5"))) (re.++ (re.+ (re.* (str.to.re "66"))) (re.++ (re.+ (re.+ (str.to.re "7"))) (re.* (re.* (str.to.re "88"))))))))))))
(check-sat)