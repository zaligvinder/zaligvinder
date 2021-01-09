(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.* (str.to.re "33"))) (re.++ (re.* (re.* (str.to.re "44"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "6"))) (re.* (re.* (str.to.re "77")))))))))
(check-sat)