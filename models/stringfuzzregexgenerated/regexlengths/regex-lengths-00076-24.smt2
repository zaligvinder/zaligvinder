(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.* (re.+ (str.to.re "1"))) (re.++ (re.* (re.union (str.to.re "2") (str.to.re "33"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.+ (re.+ (str.to.re "5"))) (re.++ (re.+ (re.* (str.to.re "6"))) (re.++ (re.* (re.union (str.to.re "77") (str.to.re "88"))) (re.++ (re.* (re.+ (str.to.re "99"))) (re.++ (re.* (re.* (str.to.re "aa"))) (re.+ (re.+ (str.to.re "bb"))))))))))))))
(assert (<= 76 (str.len var0)))
(check-sat)