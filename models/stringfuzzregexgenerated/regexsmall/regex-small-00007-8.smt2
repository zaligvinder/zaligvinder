(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "000")) (re.* (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.+ (str.to.re "333"))) (re.++ (re.+ (re.union (str.to.re "44") (str.to.re "5"))) (re.++ (re.union (re.* (str.to.re "66")) (re.* (str.to.re "77"))) (re.++ (re.* (re.* (str.to.re "888"))) (re.++ (re.+ (re.+ (str.to.re "99"))) (re.union (re.union (str.to.re "a") (str.to.re "b")) (re.union (str.to.re "c") (str.to.re "ddd")))))))))))
(check-sat)