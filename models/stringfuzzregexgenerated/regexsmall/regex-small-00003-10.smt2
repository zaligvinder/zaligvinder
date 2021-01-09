(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.union (str.to.re "11") (str.to.re "2"))) (re.++ (re.* (re.union (str.to.re "333") (str.to.re "4"))) (re.* (re.* (str.to.re "555")))))))
(check-sat)