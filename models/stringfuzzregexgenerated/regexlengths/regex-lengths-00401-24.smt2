(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "00") (str.to.re "1")) (re.+ (str.to.re "222"))) (re.++ (re.+ (re.* (str.to.re "33"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.+ (re.* (str.to.re "555"))) (re.++ (re.+ (re.* (str.to.re "66"))) (re.++ (re.* (re.* (str.to.re "77"))) (re.++ (re.* (re.* (str.to.re "8"))) (re.++ (re.union (re.* (str.to.re "9")) (re.union (str.to.re "aa") (str.to.re "bbb"))) (re.++ (re.+ (re.union (str.to.re "c") (str.to.re "ddd"))) (re.+ (re.* (str.to.re "e"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)