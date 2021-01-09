(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.* (re.* (str.to.re "11"))) (re.++ (re.* (re.* (str.to.re "222"))) (re.++ (re.* (re.union (str.to.re "33") (str.to.re "44"))) (re.+ (re.+ (str.to.re "5")))))))))
(check-sat)