(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (re.union (re.* (re.+ (re.union (re.union (re.+ (str.to.re "000")) (re.+ (str.to.re "1"))) (re.+ (re.* (str.to.re "22")))))) (re.union (re.* (re.+ (re.union (re.+ (str.to.re "333")) (re.union (str.to.re "4") (str.to.re "55"))))) (re.+ (re.+ (re.union (re.+ (str.to.re "66")) (re.* (str.to.re "777")))))))) (re.+ (re.* (re.* (re.+ (re.* (re.union (re.+ (str.to.re "8")) (re.union (str.to.re "9") (str.to.re "aa"))))))))) (re.* (re.+ (re.+ (re.* (re.union (re.+ (re.* (re.+ (str.to.re "b")))) (re.+ (re.union (re.union (str.to.re "cc") (str.to.re "d")) (re.union (str.to.re "eee") (str.to.re "ff"))))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)