(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (re.union (re.* (re.* (re.union (re.union (re.union (re.+ (str.to.re "00")) (re.+ (str.to.re "11"))) (re.+ (re.union (str.to.re "2") (str.to.re "33")))) (re.* (re.+ (re.* (str.to.re "444"))))))) (re.* (re.* (re.* (re.+ (re.+ (re.* (str.to.re "5")))))))))) (re.+ (re.+ (re.* (re.union (re.+ (re.union (re.+ (re.* (re.* (str.to.re "66")))) (re.* (re.union (re.* (str.to.re "777")) (re.* (str.to.re "8")))))) (re.+ (re.* (re.union (re.union (re.* (str.to.re "99")) (re.union (str.to.re "aa") (str.to.re "b"))) (re.union (re.+ (str.to.re "c")) (re.* (str.to.re "ddd")))))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)