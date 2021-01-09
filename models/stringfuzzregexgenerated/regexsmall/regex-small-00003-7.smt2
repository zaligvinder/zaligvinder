(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "000"))) (re.++ (re.+ (re.union (str.to.re "1") (str.to.re "2"))) (re.union (re.union (str.to.re "3") (str.to.re "4")) (re.union (str.to.re "5") (str.to.re "66")))))))
(check-sat)