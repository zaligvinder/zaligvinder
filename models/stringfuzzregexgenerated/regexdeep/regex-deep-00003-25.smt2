(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (re.* (str.to.re "0")) (re.* (str.to.re "1"))) (re.union (re.* (str.to.re "2")) (re.+ (str.to.re "33")))) (re.union (re.union (re.union (str.to.re "4") (str.to.re "55")) (re.+ (str.to.re "66"))) (re.+ (re.union (str.to.re "777") (str.to.re "888")))))))
(assert (<= 15 (str.len var0)))
(check-sat)