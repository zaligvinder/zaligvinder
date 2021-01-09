(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.* (str.to.re "1"))) (re.++ (re.union (re.union (str.to.re "2") (str.to.re "3")) (re.* (str.to.re "44"))) (re.++ (re.union (re.+ (str.to.re "55")) (re.union (str.to.re "6") (str.to.re "77"))) (re.++ (re.* (re.* (str.to.re "88"))) (re.++ (re.+ (re.union (str.to.re "9") (str.to.re "a"))) (re.++ (re.* (re.* (str.to.re "b"))) (re.++ (re.+ (re.* (str.to.re "cc"))) (re.union (re.* (str.to.re "d")) (re.union (str.to.re "e") (str.to.re "ff"))))))))))))
(check-sat)