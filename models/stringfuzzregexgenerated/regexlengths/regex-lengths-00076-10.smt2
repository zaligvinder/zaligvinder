(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "00") (str.to.re "111"))) (re.++ (re.* (re.union (str.to.re "22") (str.to.re "33"))) (re.++ (re.+ (re.union (str.to.re "44") (str.to.re "5"))) (re.++ (re.* (re.+ (str.to.re "66"))) (re.++ (re.+ (re.* (str.to.re "77"))) (re.++ (re.+ (re.* (str.to.re "8"))) (re.++ (re.+ (re.union (str.to.re "99") (str.to.re "a"))) (re.++ (re.* (re.+ (str.to.re "b"))) (re.++ (re.+ (re.+ (str.to.re "c"))) (re.union (re.* (str.to.re "dd")) (re.union (str.to.re "e") (str.to.re "fff"))))))))))))))
(assert (<= 76 (str.len var0)))
(check-sat)