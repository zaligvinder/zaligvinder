(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "0"))) (re.++ (re.+ (re.* (str.to.re "1"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.+ (str.to.re "3"))) (re.++ (re.* (re.* (str.to.re "444"))) (re.++ (re.union (re.* (str.to.re "555")) (re.union (str.to.re "66") (str.to.re "7"))) (re.++ (re.* (re.* (str.to.re "8"))) (re.++ (re.* (re.union (str.to.re "99") (str.to.re "a"))) (re.++ (re.union (re.* (str.to.re "b")) (re.* (str.to.re "ccc"))) (re.* (re.union (str.to.re "d") (str.to.re "ee")))))))))))))
(check-sat)