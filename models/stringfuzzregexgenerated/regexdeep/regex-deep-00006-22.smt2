(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (re.* (re.union (re.+ (re.union (str.to.re "0") (str.to.re "11"))) (re.+ (re.union (str.to.re "2") (str.to.re "333"))))) (re.+ (re.union (re.+ (re.+ (str.to.re "4"))) (re.* (re.* (str.to.re "5"))))))) (re.+ (re.union (re.+ (re.union (re.* (re.union (str.to.re "666") (str.to.re "777"))) (re.* (re.* (str.to.re "8"))))) (re.+ (re.union (re.union (re.union (str.to.re "999") (str.to.re "a")) (re.union (str.to.re "b") (str.to.re "c"))) (re.* (re.* (str.to.re "dd"))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)