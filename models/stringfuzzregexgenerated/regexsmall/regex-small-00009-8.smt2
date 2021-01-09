(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.+ (str.to.re "11"))) (re.++ (re.+ (re.+ (str.to.re "22"))) (re.++ (re.* (re.+ (str.to.re "333"))) (re.++ (re.+ (re.* (str.to.re "44"))) (re.++ (re.* (re.+ (str.to.re "5"))) (re.++ (re.+ (re.+ (str.to.re "66"))) (re.++ (re.+ (re.union (str.to.re "777") (str.to.re "888"))) (re.++ (re.union (re.* (str.to.re "999")) (re.+ (str.to.re "aa"))) (re.union (re.* (str.to.re "bbb")) (re.+ (str.to.re "ccc")))))))))))))
(check-sat)