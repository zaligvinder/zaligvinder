(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "00") (str.to.re "1")) (re.union (str.to.re "2") (str.to.re "33"))) (re.++ (re.+ (re.+ (str.to.re "444"))) (re.++ (re.union (re.+ (str.to.re "555")) (re.* (str.to.re "6"))) (re.++ (re.* (re.* (str.to.re "777"))) (re.++ (re.+ (re.* (str.to.re "888"))) (re.++ (re.* (re.+ (str.to.re "99"))) (re.++ (re.+ (re.+ (str.to.re "aaa"))) (re.++ (re.+ (re.+ (str.to.re "b"))) (re.++ (re.union (re.* (str.to.re "cc")) (re.+ (str.to.re "d"))) (re.union (re.* (str.to.re "ee")) (re.* (str.to.re "f"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)