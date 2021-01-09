(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "00") (str.to.re "111")) (re.* (str.to.re "22"))) (re.++ (re.+ (re.union (str.to.re "33") (str.to.re "4"))) (re.* (re.union (str.to.re "555") (str.to.re "66")))))))
(check-sat)