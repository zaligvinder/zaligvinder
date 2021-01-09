(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.* (re.* (str.to.re "11"))) (re.++ (re.union (re.* (str.to.re "2")) (re.union (str.to.re "33") (str.to.re "44"))) (re.++ (re.union (re.union (str.to.re "55") (str.to.re "6")) (re.union (str.to.re "777") (str.to.re "888"))) (re.+ (re.union (str.to.re "99") (str.to.re "aaa")))))))))
(check-sat)