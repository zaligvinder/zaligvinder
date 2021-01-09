(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.+ (re.* (str.to.re "2"))) (re.++ (re.+ (re.* (str.to.re "333"))) (re.++ (re.union (re.* (str.to.re "4")) (re.* (str.to.re "555"))) (re.++ (re.+ (re.* (str.to.re "6"))) (re.++ (re.union (re.* (str.to.re "7")) (re.* (str.to.re "88"))) (re.++ (re.+ (re.union (str.to.re "9") (str.to.re "a"))) (re.++ (re.+ (re.* (str.to.re "bb"))) (re.++ (re.+ (re.* (str.to.re "ccc"))) (re.* (re.+ (str.to.re "ddd"))))))))))))))
(check-sat)