(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "1")) (re.union (str.to.re "222") (str.to.re "3"))) (re.++ (re.* (re.* (str.to.re "44"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.* (re.+ (str.to.re "66"))) (re.++ (re.union (re.union (str.to.re "7") (str.to.re "8")) (re.* (str.to.re "999"))) (re.++ (re.* (re.+ (str.to.re "a"))) (re.++ (re.* (re.* (str.to.re "bb"))) (re.++ (re.+ (re.+ (str.to.re "cc"))) (re.++ (re.* (re.* (str.to.re "dd"))) (re.union (re.* (str.to.re "eee")) (re.* (str.to.re "f"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)