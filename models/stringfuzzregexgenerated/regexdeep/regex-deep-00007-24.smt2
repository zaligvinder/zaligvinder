(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (re.+ (re.* (re.+ (re.union (re.union (str.to.re "000") (str.to.re "111")) (re.union (str.to.re "222") (str.to.re "3")))))))) (re.* (re.union (re.+ (re.union (re.* (re.union (re.+ (str.to.re "44")) (re.* (str.to.re "5")))) (re.+ (re.* (re.* (str.to.re "66")))))) (re.+ (re.* (re.union (re.union (re.union (str.to.re "7") (str.to.re "8")) (re.* (str.to.re "999"))) (re.union (re.union (str.to.re "aa") (str.to.re "bb")) (re.union (str.to.re "c") (str.to.re "d")))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)