(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (re.union (str.to.re "000") (str.to.re "11")) (re.union (str.to.re "2") (str.to.re "33")))) (re.+ (re.* (re.union (str.to.re "4") (str.to.re "5")))))))
(assert (<= 15 (str.len var0)))
(check-sat)