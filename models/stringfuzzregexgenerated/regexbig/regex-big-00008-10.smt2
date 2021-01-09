(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "11")) (re.+ (str.to.re "2"))) (re.++ (re.* (re.+ (str.to.re "3"))) (re.++ (re.* (re.* (str.to.re "44"))) (re.++ (re.+ (re.+ (str.to.re "5"))) (re.++ (re.union (re.+ (str.to.re "66")) (re.* (str.to.re "777"))) (re.++ (re.union (re.union (str.to.re "8") (str.to.re "99")) (re.* (str.to.re "aa"))) (re.++ (re.union (re.union (str.to.re "bb") (str.to.re "c")) (re.+ (str.to.re "ddd"))) (re.union (re.* (str.to.re "e")) (re.* (str.to.re "f"))))))))))))
(check-sat)