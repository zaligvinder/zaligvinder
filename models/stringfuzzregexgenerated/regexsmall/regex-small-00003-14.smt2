(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "000")) (re.union (str.to.re "11") (str.to.re "222"))) (re.++ (re.union (re.* (str.to.re "333")) (re.+ (str.to.re "44"))) (re.union (re.+ (str.to.re "555")) (re.* (str.to.re "6")))))))
(check-sat)