(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "00"))) (re.++ (re.* (re.* (str.to.re "111"))) (re.++ (re.union (re.* (str.to.re "222")) (re.+ (str.to.re "333"))) (re.++ (re.* (re.* (str.to.re "444"))) (re.++ (re.* (re.union (str.to.re "55") (str.to.re "6"))) (re.++ (re.+ (re.union (str.to.re "777") (str.to.re "8"))) (re.++ (re.* (re.* (str.to.re "999"))) (re.++ (re.union (re.+ (str.to.re "aa")) (re.* (str.to.re "b"))) (re.++ (re.+ (re.* (str.to.re "cc"))) (re.union (re.union (str.to.re "ddd") (str.to.re "e")) (re.* (str.to.re "fff"))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)