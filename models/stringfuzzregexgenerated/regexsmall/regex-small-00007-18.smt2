(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "000"))) (re.++ (re.+ (re.union (str.to.re "1") (str.to.re "222"))) (re.++ (re.* (re.union (str.to.re "33") (str.to.re "444"))) (re.++ (re.* (re.+ (str.to.re "5"))) (re.++ (re.* (re.union (str.to.re "6") (str.to.re "7"))) (re.++ (re.union (re.+ (str.to.re "8")) (re.* (str.to.re "999"))) (re.* (re.union (str.to.re "a") (str.to.re "b")))))))))))
(check-sat)