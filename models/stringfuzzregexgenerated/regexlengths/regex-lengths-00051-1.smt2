(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.union (str.to.re "1") (str.to.re "22"))) (re.++ (re.* (re.* (str.to.re "33"))) (re.++ (re.union (re.* (str.to.re "4")) (re.* (str.to.re "5"))) (re.++ (re.+ (re.union (str.to.re "66") (str.to.re "77"))) (re.++ (re.* (re.union (str.to.re "88") (str.to.re "9"))) (re.++ (re.+ (re.* (str.to.re "aa"))) (re.++ (re.union (re.+ (str.to.re "b")) (re.+ (str.to.re "c"))) (re.++ (re.+ (re.+ (str.to.re "dd"))) (re.++ (re.+ (re.* (str.to.re "ee"))) (re.+ (re.union (str.to.re "f") (str.to.re "g"))))))))))))))
(assert (<= 51 (str.len var0)))
(check-sat)