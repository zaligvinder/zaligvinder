(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "0") (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.+ (str.to.re "333"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.+ (re.+ (str.to.re "555"))) (re.++ (re.* (re.* (str.to.re "66"))) (re.++ (re.* (re.+ (str.to.re "7"))) (re.++ (re.+ (re.+ (str.to.re "8"))) (re.++ (re.union (re.* (str.to.re "99")) (re.* (str.to.re "aa"))) (re.++ (re.+ (re.union (str.to.re "bb") (str.to.re "c"))) (re.union (re.* (str.to.re "ddd")) (re.union (str.to.re "e") (str.to.re "ff"))))))))))))))
(assert (<= 1 (str.len var0)))
(check-sat)