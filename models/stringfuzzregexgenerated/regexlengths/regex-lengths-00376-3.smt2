(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "0"))) (re.++ (re.+ (re.* (str.to.re "11"))) (re.++ (re.+ (re.* (str.to.re "2"))) (re.++ (re.* (re.union (str.to.re "333") (str.to.re "4"))) (re.++ (re.* (re.+ (str.to.re "5"))) (re.++ (re.+ (re.* (str.to.re "6"))) (re.++ (re.union (re.* (str.to.re "777")) (re.+ (str.to.re "8"))) (re.++ (re.union (re.+ (str.to.re "999")) (re.* (str.to.re "aa"))) (re.++ (re.union (re.+ (str.to.re "bb")) (re.union (str.to.re "ccc") (str.to.re "dd"))) (re.union (re.+ (str.to.re "eee")) (re.* (str.to.re "fff"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)