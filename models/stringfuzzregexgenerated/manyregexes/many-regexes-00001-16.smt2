(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.union (str.to.re "11") (str.to.re "222"))) (re.++ (re.* (re.* (str.to.re "3"))) (re.++ (re.+ (re.union (str.to.re "444") (str.to.re "55"))) (re.++ (re.+ (re.+ (str.to.re "6"))) (re.++ (re.* (re.* (str.to.re "7"))) (re.++ (re.+ (re.+ (str.to.re "8"))) (re.++ (re.* (re.* (str.to.re "99"))) (re.++ (re.+ (re.* (str.to.re "aaa"))) (re.++ (re.+ (re.* (str.to.re "bb"))) (re.union (re.* (str.to.re "ccc")) (re.union (str.to.re "ddd") (str.to.re "eee"))))))))))))))
(check-sat)