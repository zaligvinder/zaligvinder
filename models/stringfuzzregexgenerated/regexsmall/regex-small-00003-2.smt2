(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.union (str.to.re "111") (str.to.re "22"))) (re.++ (re.union (re.union (str.to.re "333") (str.to.re "44")) (re.* (str.to.re "5"))) (re.union (re.union (str.to.re "666") (str.to.re "77")) (re.+ (str.to.re "88")))))))
(check-sat)