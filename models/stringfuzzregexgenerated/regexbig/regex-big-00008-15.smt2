(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.* (re.+ (str.to.re "22"))) (re.++ (re.union (re.+ (str.to.re "333")) (re.* (str.to.re "4"))) (re.++ (re.* (re.union (str.to.re "55") (str.to.re "66"))) (re.++ (re.union (re.+ (str.to.re "777")) (re.* (str.to.re "888"))) (re.++ (re.union (re.union (str.to.re "9") (str.to.re "a")) (re.+ (str.to.re "b"))) (re.++ (re.+ (re.union (str.to.re "c") (str.to.re "d"))) (re.+ (re.union (str.to.re "ee") (str.to.re "f"))))))))))))
(check-sat)