(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "000"))) (re.++ (re.* (re.+ (str.to.re "111"))) (re.++ (re.* (re.* (str.to.re "222"))) (re.++ (re.* (re.* (str.to.re "3"))) (re.++ (re.+ (re.+ (str.to.re "444"))) (re.++ (re.union (re.union (str.to.re "555") (str.to.re "66")) (re.union (str.to.re "77") (str.to.re "888"))) (re.++ (re.+ (re.* (str.to.re "999"))) (re.++ (re.union (re.* (str.to.re "a")) (re.+ (str.to.re "bb"))) (re.++ (re.union (re.* (str.to.re "ccc")) (re.* (str.to.re "ddd"))) (re.+ (re.+ (str.to.re "eee"))))))))))))))
(assert (<= 176 (str.len var0)))
(check-sat)