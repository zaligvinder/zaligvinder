(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (re.+ (re.union (re.* (re.* (str.to.re "000"))) (re.+ (re.* (str.to.re "1"))))))) (re.+ (re.union (re.* (re.* (re.* (re.* (str.to.re "222"))))) (re.+ (re.+ (re.+ (re.union (str.to.re "3") (str.to.re "4"))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)