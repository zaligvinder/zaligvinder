(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (re.+ (re.* (re.* (re.* (re.+ (re.* (str.to.re "00"))))))) (re.* (re.+ (re.union (re.* (re.union (re.+ (str.to.re "111")) (re.* (str.to.re "222")))) (re.* (re.+ (re.union (str.to.re "33") (str.to.re "44"))))))))) (re.* (re.* (re.* (re.union (re.+ (re.* (re.+ (re.* (str.to.re "5"))))) (re.union (re.+ (re.union (re.* (str.to.re "66")) (re.* (str.to.re "7")))) (re.* (re.+ (re.union (str.to.re "888") (str.to.re "99"))))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)