(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.union (str.to.re "11") (str.to.re "22"))) (re.++ (re.union (re.* (str.to.re "33")) (re.* (str.to.re "4"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.union (re.* (str.to.re "6")) (re.union (str.to.re "7") (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "99"))) (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "bb"))) (re.++ (re.+ (re.+ (str.to.re "c"))) (re.+ (re.* (str.to.re "dd"))))))))))))
(check-sat)