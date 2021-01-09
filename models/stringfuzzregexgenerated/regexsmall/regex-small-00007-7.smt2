(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "00") (str.to.re "1")) (re.union (str.to.re "222") (str.to.re "3"))) (re.++ (re.+ (re.* (str.to.re "444"))) (re.++ (re.union (re.union (str.to.re "555") (str.to.re "66")) (re.+ (str.to.re "77"))) (re.++ (re.union (re.+ (str.to.re "88")) (re.* (str.to.re "999"))) (re.++ (re.union (re.* (str.to.re "a")) (re.+ (str.to.re "b"))) (re.++ (re.* (re.union (str.to.re "cc") (str.to.re "dd"))) (re.+ (re.union (str.to.re "eee") (str.to.re "ff")))))))))))
(check-sat)