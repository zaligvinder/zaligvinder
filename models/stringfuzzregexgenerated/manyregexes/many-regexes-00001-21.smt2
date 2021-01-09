(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.union (re.+ (str.to.re "111")) (re.* (str.to.re "222"))) (re.++ (re.+ (re.* (str.to.re "3"))) (re.++ (re.* (re.+ (str.to.re "4"))) (re.++ (re.+ (re.union (str.to.re "555") (str.to.re "6"))) (re.++ (re.* (re.* (str.to.re "777"))) (re.++ (re.* (re.union (str.to.re "88") (str.to.re "9"))) (re.++ (re.+ (re.union (str.to.re "aaa") (str.to.re "bb"))) (re.++ (re.* (re.* (str.to.re "cc"))) (re.+ (re.+ (str.to.re "ddd"))))))))))))))
(check-sat)