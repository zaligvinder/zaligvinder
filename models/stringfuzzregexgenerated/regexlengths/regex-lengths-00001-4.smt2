(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "222")) (re.+ (str.to.re "33"))) (re.++ (re.* (re.+ (str.to.re "4"))) (re.++ (re.+ (re.union (str.to.re "5") (str.to.re "66"))) (re.++ (re.union (re.union (str.to.re "777") (str.to.re "8")) (re.+ (str.to.re "9"))) (re.++ (re.union (re.union (str.to.re "aa") (str.to.re "bbb")) (re.* (str.to.re "ccc"))) (re.++ (re.+ (re.+ (str.to.re "dd"))) (re.++ (re.* (re.+ (str.to.re "e"))) (re.++ (re.union (re.union (str.to.re "fff") (str.to.re "g")) (re.union (str.to.re "h") (str.to.re "i"))) (re.+ (re.union (str.to.re "j") (str.to.re "kkk"))))))))))))))
(assert (<= 1 (str.len var0)))
(check-sat)