(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (re.+ (re.* (re.* (str.to.re "0")))) (re.* (re.union (re.* (str.to.re "1")) (re.* (str.to.re "22"))))) (re.union (re.* (re.+ (re.union (str.to.re "33") (str.to.re "4")))) (re.* (re.* (re.union (str.to.re "555") (str.to.re "66")))))) (re.* (re.* (re.union (re.+ (re.union (str.to.re "7") (str.to.re "88"))) (re.union (re.+ (str.to.re "9")) (re.+ (str.to.re "aa")))))))))
(assert (<= 15 (str.len var0)))
(check-sat)