(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "0") (str.to.re "11"))) (re.++ (re.* (re.+ (str.to.re "222"))) (re.++ (re.+ (re.+ (str.to.re "3"))) (re.++ (re.union (re.* (str.to.re "4")) (re.+ (str.to.re "555"))) (re.++ (re.+ (re.* (str.to.re "6"))) (re.++ (re.* (re.union (str.to.re "777") (str.to.re "88"))) (re.++ (re.+ (re.+ (str.to.re "9"))) (re.++ (re.+ (re.union (str.to.re "aa") (str.to.re "b"))) (re.++ (re.+ (re.+ (str.to.re "ccc"))) (re.+ (re.* (str.to.re "ddd"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)