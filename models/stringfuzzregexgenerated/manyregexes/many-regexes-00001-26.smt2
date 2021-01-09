(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.+ (re.* (str.to.re "11"))) (re.++ (re.* (re.* (str.to.re "22"))) (re.++ (re.union (re.+ (str.to.re "3")) (re.+ (str.to.re "444"))) (re.++ (re.* (re.union (str.to.re "555") (str.to.re "66"))) (re.++ (re.* (re.* (str.to.re "7"))) (re.++ (re.+ (re.union (str.to.re "8") (str.to.re "999"))) (re.++ (re.+ (re.union (str.to.re "aaa") (str.to.re "b"))) (re.++ (re.+ (re.+ (str.to.re "cc"))) (re.+ (re.union (str.to.re "d") (str.to.re "e"))))))))))))))
(check-sat)