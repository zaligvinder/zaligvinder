(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.union (str.to.re "111") (str.to.re "22"))) (re.++ (re.union (re.* (str.to.re "33")) (re.+ (str.to.re "44"))) (re.++ (re.union (re.union (str.to.re "55") (str.to.re "6")) (re.* (str.to.re "7"))) (re.++ (re.+ (re.+ (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "999"))) (re.++ (re.* (re.* (str.to.re "aaa"))) (re.+ (re.+ (str.to.re "b")))))))))))
(check-sat)