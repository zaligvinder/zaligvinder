(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "00"))) (re.++ (re.+ (re.* (str.to.re "1"))) (re.++ (re.union (re.+ (str.to.re "2")) (re.+ (str.to.re "3"))) (re.++ (re.* (re.union (str.to.re "4") (str.to.re "55"))) (re.++ (re.* (re.+ (str.to.re "66"))) (re.++ (re.+ (re.union (str.to.re "777") (str.to.re "88"))) (re.++ (re.union (re.union (str.to.re "99") (str.to.re "aa")) (re.+ (str.to.re "b"))) (re.++ (re.union (re.* (str.to.re "ccc")) (re.union (str.to.re "d") (str.to.re "eee"))) (re.++ (re.+ (re.+ (str.to.re "ff"))) (re.* (re.* (str.to.re "g"))))))))))))))
(assert (<= 51 (str.len var0)))
(check-sat)